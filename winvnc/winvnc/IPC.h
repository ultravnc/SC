#pragma once

struct mystruct
{
	short counter;
	short locked;
	RECT rect1[2000];
	RECT rect2[2000];
	short type[2000];
//	ULONG cursor[2000];
};

// Class for Inter Process Communication using Memory Mapped Files
class CIPC
{
public:
	CIPC();
	virtual ~CIPC();

	unsigned char * CreateBitmap();
	void CloseBitmap();
	bool CreateIPCMMF(void);
	bool OpenIPCMMF(void);
	void CloseIPCMMF(void);
	mystruct*  listall();

	bool CreateIPCMMFBitmap(int size);
	bool OpenIPCMMFBitmap(void);
	void CloseIPCMMFBitmap(void);

	bool IsOpen(void) const {return (m_hFileMap != NULL);}

	bool Lock(void);
	void Unlock(void);

	bool LockBitmap(void);
	void UnlockBitmap(void);

	void Addrect(int type, int x1, int y1, int x2, int y2,int x11,int y11, int x22,int y22);
	void Addcursor(ULONG cursor);

protected:
	HANDLE m_hFileMap;
	HANDLE m_hMutex;
	LPVOID m_FileView;

	HANDLE m_hFileMapBitmap;
	HANDLE m_hMutexBitmap;
	LPVOID m_FileViewBitmap;

	mystruct list;
	mystruct *plist;
	unsigned char *pBitmap;
};
