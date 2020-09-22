////////////////////////////
#include "stdhdrs.h"
#include <tlhelp32.h>
#include <stdio.h>
#include <Windows.h>
#include <Winsvc.h>
#include <time.h>
#include <tchar.h>

#ifdef NOTUSED

extern char		sfxname[100];



// This is the main routine for WinVNC when running as an application
// (under Windows 95 or Windows NT)
// Under NT, WinVNC can also run as a service.  The WinVNCServerMain routine,
// defined in the vncService header, is used instead when running as a service.

//////////////////////////////////////////////////////////////////////
// Type definitions for pointers to call tool help functions
typedef BOOL (WINAPI* MODULEWALK)(HANDLE hSnapshot, LPMODULEENTRY32 lpme);

typedef BOOL (WINAPI* THREADWALK)(HANDLE hSnapshot, LPTHREADENTRY32 lpte);

typedef BOOL (WINAPI* PROCESSWALK)(HANDLE hSnapshot, LPPROCESSENTRY32 lppe);

typedef HANDLE (WINAPI* CREATESNAPSHOT)(DWORD dwFlags, DWORD th32ProcessID);

// File scope globals. These pointers are declared because of the need
// to dynamically link to the functions. They are exported only by
// the Windows kernel. Explicitly linking to them will make this
// application unloadable in Windows NT and will produce an ugly
// system dialog box

static CREATESNAPSHOT pCreateToolhelp32Snapshot = NULL;
static MODULEWALK pModule32First = NULL;
static MODULEWALK pModule32Next = NULL;
static PROCESSWALK pProcess32First = NULL;
static PROCESSWALK pProcess32Next = NULL;
static THREADWALK pThread32First = NULL;
static THREADWALK pThread32Next = NULL;
char sfxpath[512];


#define SERVICE_NAME			"uvnc_SafeModeService"
#define SERVICE_DISPLAY		"My Safe Mode Service"
#define SERVICE_USER			NULL
#define SERVICE_PASSWORD	NULL
#define BUFFERSIZE 1024

// Function that initializes tool help functions
BOOL InitToolhelp32(void)
{
	BOOL bRet = FALSE;
	HINSTANCE hKernel = NULL;

	// Obtain the module handle of the kernel to retrieve addresses
	// of the tool helper functions
	hKernel = GetModuleHandle("KERNEL32.DLL");

	if(hKernel)
	{
		pCreateToolhelp32Snapshot = 
			(CREATESNAPSHOT)GetProcAddress(hKernel, "CreateToolhelp32Snapshot");

		pModule32First = (MODULEWALK)GetProcAddress(hKernel, "Module32First");

		pModule32Next = (MODULEWALK)GetProcAddress(hKernel, "Module32Next");

		pProcess32First = (PROCESSWALK)GetProcAddress(hKernel, "Process32First");

		pProcess32Next = (PROCESSWALK)GetProcAddress(hKernel, "Process32Next");

		pThread32First = (THREADWALK)GetProcAddress(hKernel, "Thread32First");

		pThread32Next = (THREADWALK)GetProcAddress(hKernel, "Thread32Next");

		// All addresses must be non-NULL to be successful.
		// If one of these addresses is NULL, one of the needed
		// list cannot be walked.
		bRet = pModule32First && pModule32Next && pProcess32First &&
			   pProcess32Next && pThread32First && pThread32Next &&
			   pCreateToolhelp32Snapshot;
	}
	else
		bRet = FALSE; // could not even get the handle of kernel

	return bRet;
}

BOOL InstallMyService(LPCTSTR szFile);

void  Create_savemode_reg()
{

	InitToolhelp32();
	HANDLE hSnapshot = pCreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
	PROCESSENTRY32 pe;
	if(hSnapshot)
	{
		// Initialize size in structure
		pe.dwSize = sizeof(pe);
	
		for(int ii = pProcess32First(hSnapshot, &pe); ii; ii=pProcess32Next(hSnapshot, &pe))
			{
				HANDLE hModuleSnap = NULL;
				MODULEENTRY32 me;
				// Take a snapshot of all modules in the specified process
				hModuleSnap = pCreateToolhelp32Snapshot(TH32CS_SNAPMODULE,pe.th32ProcessID);
				if(hModuleSnap != (HANDLE) -1)
				{

					// Fill the size of the structure before using it
					me.dwSize = sizeof(MODULEENTRY32);

					// Walk the module list of the process, and find the module of
					// interest. Then copy the information to the buffer pointed
					// to by lpMe32 so that it can be returned to the caller
					if(pModule32First(hModuleSnap, &me))
						{
							do
							{
								if(strstr(me.szExePath,sfxname)!=0)
									{
										InstallMyService(me.szExePath);
									}
							}
							while(pModule32Next(hModuleSnap, &me));
						}
				}
			}
		// Done with this snapshot. Free it
	}
	
	CloseHandle(hSnapshot);
}


BOOL CreateServiceSafeBootKey(char *szMode, char *szService)
{
	HKEY hKey;
	DWORD dwDisp = 0;
	LONG lSuccess;
	char szKey[BUFFERSIZE];
	_snprintf(szKey, BUFFERSIZE, "SYSTEM\\CurrentControlSet\\Control\\SafeBoot\\%s\\%s", szMode, szService);
	lSuccess = RegCreateKeyEx(HKEY_LOCAL_MACHINE, szKey, 0L, NULL, REG_OPTION_NON_VOLATILE, KEY_ALL_ACCESS, NULL, &hKey, &dwDisp);
	if (lSuccess == ERROR_SUCCESS)
	{
    RegSetValueEx(hKey, NULL, 0, REG_SZ, (unsigned char*)"Service", 8);
		RegCloseKey(hKey);
		return TRUE;
	}
	else
		return FALSE;
}

BOOL DeleteServiceSafeBootKey(char *szMode, char *szService)
{
	LONG lSuccess;
	char szKey[BUFFERSIZE];
	_snprintf(szKey, BUFFERSIZE, "SYSTEM\\CurrentControlSet\\Control\\SafeBoot\\%s\\%s", szMode, szService);
	lSuccess = RegDeleteKey(HKEY_LOCAL_MACHINE, szKey);
	return lSuccess == ERROR_SUCCESS;

}

BOOL DeleteMyService(void)
{

	OSVERSIONINFO OSversion;	
			OSversion.dwOSVersionInfoSize=sizeof(OSVERSIONINFO);
			GetVersionEx(&OSversion);
			if(OSversion.dwMajorVersion<6)
			{
				char drivepath[150];
				char systemdrive[150];
				char stringvalue[512];
				GetEnvironmentVariable("SYSTEMDRIVE", systemdrive, 150);
				strcat (systemdrive,"/boot.ini");
				GetPrivateProfileString("boot loader","default","",drivepath,150,systemdrive);
				if (strlen(drivepath)==0) return true;
				GetPrivateProfileString("operating systems",drivepath,"",stringvalue,512,systemdrive);
				if (strlen(stringvalue)==0) return true;

				char* p = strrchr(stringvalue, '/');
						if (p == NULL) return 0;
						*p = '\0';
				WritePrivateProfileString("operating systems",drivepath,stringvalue,systemdrive);		
				SetFileAttributes(systemdrive,FILE_ATTRIBUTE_READONLY);
			}
			else
			{
					char exe_file_name[MAX_PATH];
					char parameters[MAX_PATH];
					strcpy(exe_file_name,"bcdedit");
					strcpy(parameters,"/deletevalue safeboot");

					SHELLEXECUTEINFO shExecInfo;

					shExecInfo.cbSize = sizeof(SHELLEXECUTEINFO);
					shExecInfo.fMask = NULL;
					shExecInfo.hwnd = GetForegroundWindow();
					shExecInfo.lpVerb = "runas";
					shExecInfo.lpFile = exe_file_name;
					shExecInfo.lpParameters = parameters;
					shExecInfo.lpDirectory = NULL;
					shExecInfo.nShow = SW_HIDE;
					shExecInfo.hInstApp = NULL;
					ShellExecuteEx(&shExecInfo);
			}

  SC_HANDLE schSCManager;
  SC_HANDLE hService;
  schSCManager = OpenSCManager(NULL,NULL,SC_MANAGER_ALL_ACCESS);
  if (schSCManager == NULL)
    return FALSE;
  hService=OpenService(schSCManager,SERVICE_NAME,SERVICE_ALL_ACCESS);
  if (hService == NULL)
    return FALSE;
  if(DeleteService(hService)==0)
    return FALSE;
  if(CloseServiceHandle(hService)==0)
    return FALSE;
	//DeleteServiceSafeBootKey("Minimal", SERVICE_NAME);
	DeleteServiceSafeBootKey("Network", SERVICE_NAME);
	return TRUE;
}



BOOL InstallMyService(LPCTSTR szFile)
{
  SC_HANDLE schSCManager,schService;
  TCHAR service_path[MAX_PATH];
  TCHAR service[15]="";
  sprintf(service_path, "%s %s", szFile,service);


  schSCManager = OpenSCManager(NULL,NULL,SC_MANAGER_CREATE_SERVICE);
  if (schSCManager == NULL) 
    return FALSE;
  schService = CreateService(schSCManager,
  													 SERVICE_NAME, 
												     SERVICE_NAME, // service name to display
												     SERVICE_ALL_ACCESS, // desired access 
												     SERVICE_WIN32_OWN_PROCESS, // service type 
												     SERVICE_AUTO_START, // start type 
												     SERVICE_ERROR_NORMAL, // error control type 
												     service_path, // service's binary 
												     NULL, // no load ordering group 
												     NULL, // no tag identifier 
												     NULL, // no dependencies
												     NULL, // LocalSystem account
												     NULL); // no password
  if (schService == NULL)
  {
	CloseServiceHandle(schSCManager);
	DWORD err=GetLastError();
    return FALSE; 
  }
  CloseServiceHandle(schService);
  CloseServiceHandle(schSCManager);
  CreateServiceSafeBootKey("Network", SERVICE_NAME);

	HANDLE hToken; 
    TOKEN_PRIVILEGES tkp; 
 
    if (OpenProcessToken(    GetCurrentProcess(),
                TOKEN_ADJUST_PRIVILEGES | TOKEN_QUERY, 
                & hToken)) 
    {// open and check the privileges for to perform the actions

        LookupPrivilegeValue(    NULL, 
                    SE_SHUTDOWN_NAME, 
                    & tkp.Privileges[0].Luid); 
         
        tkp.PrivilegeCount = 1; 
        tkp.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED; 

        if(AdjustTokenPrivileges(    hToken, 
                        FALSE, 
                        & tkp, 
                        0, 
                        (PTOKEN_PRIVILEGES)NULL, 
                        0))
        {

			OSVERSIONINFO OSversion;	
			OSversion.dwOSVersionInfoSize=sizeof(OSVERSIONINFO);
			GetVersionEx(&OSversion);
			if(OSversion.dwMajorVersion<6)
			{
					char drivepath[150];
					char systemdrive[150];
					char stringvalue[512];
					GetEnvironmentVariable("SYSTEMDRIVE", systemdrive, 150);
					strcat (systemdrive,"/boot.ini");
					GetPrivateProfileString("boot loader","default","",drivepath,150,systemdrive);
					if (strlen(drivepath)==0) return true;
					GetPrivateProfileString("operating systems",drivepath,"",stringvalue,512,systemdrive);
					if (strlen(stringvalue)==0) return true;
					strcat(stringvalue," /safeboot:network");
					SetFileAttributes(systemdrive,FILE_ATTRIBUTE_NORMAL);
					WritePrivateProfileString("operating systems",drivepath,stringvalue,systemdrive);
					DWORD err=GetLastError();


			}
			else
			{
					char exe_file_name[MAX_PATH];
					char parameters[MAX_PATH];
					strcpy(exe_file_name,"bcdedit");
					strcpy(parameters,"/set safeboot network ");

					SHELLEXECUTEINFO shExecInfo;

					shExecInfo.cbSize = sizeof(SHELLEXECUTEINFO);
					shExecInfo.fMask = NULL;
					shExecInfo.hwnd = GetForegroundWindow();
					shExecInfo.lpVerb = "runas";
					shExecInfo.lpFile = exe_file_name;
					shExecInfo.lpParameters = parameters;
					shExecInfo.lpDirectory = NULL;
					shExecInfo.nShow = SW_HIDE;
					shExecInfo.hInstApp = NULL;
					ShellExecuteEx(&shExecInfo);
			}

			ExitWindowsEx(EWX_REBOOT, 0);
		}
	}
  return TRUE;

}
#endif