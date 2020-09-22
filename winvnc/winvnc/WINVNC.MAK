# Microsoft Developer Studio Generated NMAKE File, Based on WINVNC.DSP
!IF "$(CFG)" == ""
CFG=winvnc - Win32 Release
!MESSAGE No configuration specified. Defaulting to winvnc - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "winvnc - Win32 Release" && "$(CFG)" != "winvnc - Win32 Debug" && "$(CFG)" != "winvnc - Win32 SINGLECLICK"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "WINVNC.MAK" CFG="winvnc - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "winvnc - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "winvnc - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE "winvnc - Win32 SINGLECLICK" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "winvnc - Win32 Release"

OUTDIR=.\..\Release
INTDIR=.\..\Release
# Begin Custom Macros
OutDir=.\..\Release
# End Custom Macros

ALL : "$(OUTDIR)\WINVNC.exe"


CLEAN :
	-@erase "$(INTDIR)\black_layered.obj"
	-@erase "$(INTDIR)\buildtime.obj"
	-@erase "$(INTDIR)\DSMPlugin.obj"
	-@erase "$(INTDIR)\Dtwinver.obj"
	-@erase "$(INTDIR)\HideDesktop.obj"
	-@erase "$(INTDIR)\rfbRegion_X11.obj"
	-@erase "$(INTDIR)\rfbUpdateTracker.obj"
	-@erase "$(INTDIR)\stdhdrs.obj"
	-@erase "$(INTDIR)\Test.obj"
	-@erase "$(INTDIR)\TextChat.obj"
	-@erase "$(INTDIR)\translate.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\videodriver.obj"
	-@erase "$(INTDIR)\videodrivercheck.obj"
	-@erase "$(INTDIR)\vncabout.obj"
	-@erase "$(INTDIR)\vncbuffer.obj"
	-@erase "$(INTDIR)\vncclient.obj"
	-@erase "$(INTDIR)\vncdesktop.obj"
	-@erase "$(INTDIR)\vncDesktopSW.obj"
	-@erase "$(INTDIR)\vncdesktopthread.obj"
	-@erase "$(INTDIR)\vncencodehext.obj"
	-@erase "$(INTDIR)\vncencoder.obj"
	-@erase "$(INTDIR)\vncencoderCursor.obj"
	-@erase "$(INTDIR)\vncencodezrle.obj"
	-@erase "$(INTDIR)\vncinsthandler.obj"
	-@erase "$(INTDIR)\vnckeymap.obj"
	-@erase "$(INTDIR)\vnclog.obj"
	-@erase "$(INTDIR)\vncmenu.obj"
	-@erase "$(INTDIR)\vncMultiMonitor.obj"
	-@erase "$(INTDIR)\vncOSVersion.obj"
	-@erase "$(INTDIR)\vncproperties.obj"
	-@erase "$(INTDIR)\vncpropertiesPoll.obj"
	-@erase "$(INTDIR)\vncserver.obj"
	-@erase "$(INTDIR)\vncservice.obj"
	-@erase "$(INTDIR)\vncsockconnect.obj"
	-@erase "$(INTDIR)\vsocket.obj"
	-@erase "$(INTDIR)\winvnc.obj"
	-@erase "$(INTDIR)\winvnc.res"
	-@erase "$(INTDIR)\ZipUnzip32.obj"
	-@erase "$(OUTDIR)\WINVNC.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=xicl6.exe
CPP_PROJ=/nologo /MD /W3 /GX /Zi /O1 /I "..\omnithread" /I ".." /I "..\.." /D "NDEBUG" /D "__x86__" /D "__WIN32__" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D _WIN32_WINNT=0x501 /D "XMD_H" /D "_WINSTATIC" /D "SINGLECLICKULTRA" /Fp"$(INTDIR)\WINVNC.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /O3 /QaxWK /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x809 /fo"$(INTDIR)\winvnc.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\WINVNC.bsc" 
BSC32_SBRS= \
	
LINK32=xilink6.exe
LINK32_FLAGS=wsock32.lib winmm.lib kernel32.lib user32.lib gdi32.lib shell32.lib advapi32.lib ole32.lib version.lib comctl32.lib /nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\WINVNC.pdb" /machine:I386 /out:"$(OUTDIR)\WINVNC.exe" 
LINK32_OBJS= \
	"$(INTDIR)\black_layered.obj" \
	"$(INTDIR)\buildtime.obj" \
	"$(INTDIR)\DSMPlugin.obj" \
	"$(INTDIR)\Dtwinver.obj" \
	"$(INTDIR)\HideDesktop.obj" \
	"$(INTDIR)\rfbRegion_X11.obj" \
	"$(INTDIR)\rfbUpdateTracker.obj" \
	"$(INTDIR)\stdhdrs.obj" \
	"$(INTDIR)\Test.obj" \
	"$(INTDIR)\TextChat.obj" \
	"$(INTDIR)\translate.obj" \
	"$(INTDIR)\videodriver.obj" \
	"$(INTDIR)\videodrivercheck.obj" \
	"$(INTDIR)\vncabout.obj" \
	"$(INTDIR)\vncbuffer.obj" \
	"$(INTDIR)\vncclient.obj" \
	"$(INTDIR)\vncdesktop.obj" \
	"$(INTDIR)\vncDesktopSW.obj" \
	"$(INTDIR)\vncdesktopthread.obj" \
	"$(INTDIR)\vncencodehext.obj" \
	"$(INTDIR)\vncencoder.obj" \
	"$(INTDIR)\vncencoderCursor.obj" \
	"$(INTDIR)\vncencodezrle.obj" \
	"$(INTDIR)\vncinsthandler.obj" \
	"$(INTDIR)\vnckeymap.obj" \
	"$(INTDIR)\vnclog.obj" \
	"$(INTDIR)\vncmenu.obj" \
	"$(INTDIR)\vncMultiMonitor.obj" \
	"$(INTDIR)\vncOSVersion.obj" \
	"$(INTDIR)\vncproperties.obj" \
	"$(INTDIR)\vncpropertiesPoll.obj" \
	"$(INTDIR)\vncserver.obj" \
	"$(INTDIR)\vncservice.obj" \
	"$(INTDIR)\vncsockconnect.obj" \
	"$(INTDIR)\vsocket.obj" \
	"$(INTDIR)\winvnc.obj" \
	"$(INTDIR)\ZipUnzip32.obj" \
	"$(INTDIR)\winvnc.res"

"$(OUTDIR)\WINVNC.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
   cl /nologo /MT /Fo..\Release\ /Fd..\Release\ /c buildtime.cpp
	 $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

SOURCE="$(InputPath)"

!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"

OUTDIR=.\..\Debug
INTDIR=.\..\Debug
# Begin Custom Macros
OutDir=.\..\Debug
# End Custom Macros

ALL : "$(OUTDIR)\WINVNC.exe" "$(OUTDIR)\WINVNC.bsc"


CLEAN :
	-@erase "$(INTDIR)\black_layered.obj"
	-@erase "$(INTDIR)\black_layered.sbr"
	-@erase "$(INTDIR)\buildtime.obj"
	-@erase "$(INTDIR)\buildtime.sbr"
	-@erase "$(INTDIR)\DSMPlugin.obj"
	-@erase "$(INTDIR)\DSMPlugin.sbr"
	-@erase "$(INTDIR)\Dtwinver.obj"
	-@erase "$(INTDIR)\Dtwinver.sbr"
	-@erase "$(INTDIR)\HideDesktop.obj"
	-@erase "$(INTDIR)\HideDesktop.sbr"
	-@erase "$(INTDIR)\rfbRegion_X11.obj"
	-@erase "$(INTDIR)\rfbRegion_X11.sbr"
	-@erase "$(INTDIR)\rfbUpdateTracker.obj"
	-@erase "$(INTDIR)\rfbUpdateTracker.sbr"
	-@erase "$(INTDIR)\stdhdrs.obj"
	-@erase "$(INTDIR)\stdhdrs.sbr"
	-@erase "$(INTDIR)\Test.obj"
	-@erase "$(INTDIR)\Test.sbr"
	-@erase "$(INTDIR)\TextChat.obj"
	-@erase "$(INTDIR)\TextChat.sbr"
	-@erase "$(INTDIR)\translate.obj"
	-@erase "$(INTDIR)\translate.sbr"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\videodriver.obj"
	-@erase "$(INTDIR)\videodriver.sbr"
	-@erase "$(INTDIR)\videodrivercheck.obj"
	-@erase "$(INTDIR)\videodrivercheck.sbr"
	-@erase "$(INTDIR)\vncabout.obj"
	-@erase "$(INTDIR)\vncabout.sbr"
	-@erase "$(INTDIR)\vncbuffer.obj"
	-@erase "$(INTDIR)\vncbuffer.sbr"
	-@erase "$(INTDIR)\vncclient.obj"
	-@erase "$(INTDIR)\vncclient.sbr"
	-@erase "$(INTDIR)\vncdesktop.obj"
	-@erase "$(INTDIR)\vncdesktop.sbr"
	-@erase "$(INTDIR)\vncDesktopSW.obj"
	-@erase "$(INTDIR)\vncDesktopSW.sbr"
	-@erase "$(INTDIR)\vncdesktopthread.obj"
	-@erase "$(INTDIR)\vncdesktopthread.sbr"
	-@erase "$(INTDIR)\vncencodehext.obj"
	-@erase "$(INTDIR)\vncencodehext.sbr"
	-@erase "$(INTDIR)\vncencoder.obj"
	-@erase "$(INTDIR)\vncencoder.sbr"
	-@erase "$(INTDIR)\vncencoderCursor.obj"
	-@erase "$(INTDIR)\vncencoderCursor.sbr"
	-@erase "$(INTDIR)\vncencodezrle.obj"
	-@erase "$(INTDIR)\vncencodezrle.sbr"
	-@erase "$(INTDIR)\vncinsthandler.obj"
	-@erase "$(INTDIR)\vncinsthandler.sbr"
	-@erase "$(INTDIR)\vnckeymap.obj"
	-@erase "$(INTDIR)\vnckeymap.sbr"
	-@erase "$(INTDIR)\vnclog.obj"
	-@erase "$(INTDIR)\vnclog.sbr"
	-@erase "$(INTDIR)\vncmenu.obj"
	-@erase "$(INTDIR)\vncmenu.sbr"
	-@erase "$(INTDIR)\vncMultiMonitor.obj"
	-@erase "$(INTDIR)\vncMultiMonitor.sbr"
	-@erase "$(INTDIR)\vncOSVersion.obj"
	-@erase "$(INTDIR)\vncOSVersion.sbr"
	-@erase "$(INTDIR)\vncproperties.obj"
	-@erase "$(INTDIR)\vncproperties.sbr"
	-@erase "$(INTDIR)\vncpropertiesPoll.obj"
	-@erase "$(INTDIR)\vncpropertiesPoll.sbr"
	-@erase "$(INTDIR)\vncserver.obj"
	-@erase "$(INTDIR)\vncserver.sbr"
	-@erase "$(INTDIR)\vncservice.obj"
	-@erase "$(INTDIR)\vncservice.sbr"
	-@erase "$(INTDIR)\vncsockconnect.obj"
	-@erase "$(INTDIR)\vncsockconnect.sbr"
	-@erase "$(INTDIR)\vsocket.obj"
	-@erase "$(INTDIR)\vsocket.sbr"
	-@erase "$(INTDIR)\winvnc.obj"
	-@erase "$(INTDIR)\winvnc.res"
	-@erase "$(INTDIR)\winvnc.sbr"
	-@erase "$(INTDIR)\ZipUnzip32.obj"
	-@erase "$(INTDIR)\ZipUnzip32.sbr"
	-@erase "$(OUTDIR)\WINVNC.bsc"
	-@erase "$(OUTDIR)\WINVNC.exe"
	-@erase "$(OUTDIR)\WINVNC.ilk"
	-@erase "$(OUTDIR)\WINVNC.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=xicl6.exe
CPP_PROJ=/nologo /MTd /W3 /Gm /GX /ZI /Od /I "..\omnithread" /I ".." /I "..\.." /D "_DEBUG" /D "__x86__" /D "__WIN32__" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "XMD_H" /D "_WINSTATIC" /D "SINGLECLICKULTRA" /D _WIN32_WINNT=0x501 /D _WIN32_IE=0x0500 /D "DRIVER" /Fr"$(INTDIR)\\" /Fp"$(INTDIR)\WINVNC.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x809 /fo"$(INTDIR)\winvnc.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\WINVNC.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\black_layered.sbr" \
	"$(INTDIR)\buildtime.sbr" \
	"$(INTDIR)\DSMPlugin.sbr" \
	"$(INTDIR)\Dtwinver.sbr" \
	"$(INTDIR)\HideDesktop.sbr" \
	"$(INTDIR)\rfbRegion_X11.sbr" \
	"$(INTDIR)\rfbUpdateTracker.sbr" \
	"$(INTDIR)\stdhdrs.sbr" \
	"$(INTDIR)\Test.sbr" \
	"$(INTDIR)\TextChat.sbr" \
	"$(INTDIR)\translate.sbr" \
	"$(INTDIR)\videodriver.sbr" \
	"$(INTDIR)\videodrivercheck.sbr" \
	"$(INTDIR)\vncabout.sbr" \
	"$(INTDIR)\vncbuffer.sbr" \
	"$(INTDIR)\vncclient.sbr" \
	"$(INTDIR)\vncdesktop.sbr" \
	"$(INTDIR)\vncDesktopSW.sbr" \
	"$(INTDIR)\vncdesktopthread.sbr" \
	"$(INTDIR)\vncencodehext.sbr" \
	"$(INTDIR)\vncencoder.sbr" \
	"$(INTDIR)\vncencoderCursor.sbr" \
	"$(INTDIR)\vncencodezrle.sbr" \
	"$(INTDIR)\vncinsthandler.sbr" \
	"$(INTDIR)\vnckeymap.sbr" \
	"$(INTDIR)\vnclog.sbr" \
	"$(INTDIR)\vncmenu.sbr" \
	"$(INTDIR)\vncMultiMonitor.sbr" \
	"$(INTDIR)\vncOSVersion.sbr" \
	"$(INTDIR)\vncproperties.sbr" \
	"$(INTDIR)\vncpropertiesPoll.sbr" \
	"$(INTDIR)\vncserver.sbr" \
	"$(INTDIR)\vncservice.sbr" \
	"$(INTDIR)\vncsockconnect.sbr" \
	"$(INTDIR)\vsocket.sbr" \
	"$(INTDIR)\winvnc.sbr" \
	"$(INTDIR)\ZipUnzip32.sbr"

"$(OUTDIR)\WINVNC.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=xilink6.exe
LINK32_FLAGS=ws2_32.lib winmm.lib kernel32.lib user32.lib gdi32.lib shell32.lib advapi32.lib ole32.lib version.lib comctl32.lib /nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\WINVNC.pdb" /debug /machine:I386 /out:"$(OUTDIR)\WINVNC.exe" 
LINK32_OBJS= \
	"$(INTDIR)\black_layered.obj" \
	"$(INTDIR)\buildtime.obj" \
	"$(INTDIR)\DSMPlugin.obj" \
	"$(INTDIR)\Dtwinver.obj" \
	"$(INTDIR)\HideDesktop.obj" \
	"$(INTDIR)\rfbRegion_X11.obj" \
	"$(INTDIR)\rfbUpdateTracker.obj" \
	"$(INTDIR)\stdhdrs.obj" \
	"$(INTDIR)\Test.obj" \
	"$(INTDIR)\TextChat.obj" \
	"$(INTDIR)\translate.obj" \
	"$(INTDIR)\videodriver.obj" \
	"$(INTDIR)\videodrivercheck.obj" \
	"$(INTDIR)\vncabout.obj" \
	"$(INTDIR)\vncbuffer.obj" \
	"$(INTDIR)\vncclient.obj" \
	"$(INTDIR)\vncdesktop.obj" \
	"$(INTDIR)\vncDesktopSW.obj" \
	"$(INTDIR)\vncdesktopthread.obj" \
	"$(INTDIR)\vncencodehext.obj" \
	"$(INTDIR)\vncencoder.obj" \
	"$(INTDIR)\vncencoderCursor.obj" \
	"$(INTDIR)\vncencodezrle.obj" \
	"$(INTDIR)\vncinsthandler.obj" \
	"$(INTDIR)\vnckeymap.obj" \
	"$(INTDIR)\vnclog.obj" \
	"$(INTDIR)\vncmenu.obj" \
	"$(INTDIR)\vncMultiMonitor.obj" \
	"$(INTDIR)\vncOSVersion.obj" \
	"$(INTDIR)\vncproperties.obj" \
	"$(INTDIR)\vncpropertiesPoll.obj" \
	"$(INTDIR)\vncserver.obj" \
	"$(INTDIR)\vncservice.obj" \
	"$(INTDIR)\vncsockconnect.obj" \
	"$(INTDIR)\vsocket.obj" \
	"$(INTDIR)\winvnc.obj" \
	"$(INTDIR)\ZipUnzip32.obj" \
	"$(INTDIR)\winvnc.res"

"$(OUTDIR)\WINVNC.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
   cl /nologo /MTd /Fo..\Debug\ /Fd..\Debug\ /c buildtime.cpp
	 $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

SOURCE="$(InputPath)"

!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"

OUTDIR=.\winvnc___Win32_SINGLECLICK
INTDIR=.\winvnc___Win32_SINGLECLICK
# Begin Custom Macros
OutDir=.\winvnc___Win32_SINGLECLICK
# End Custom Macros

ALL : "$(OUTDIR)\WINVNC.exe"


CLEAN :
	-@erase "$(INTDIR)\black_layered.obj"
	-@erase "$(INTDIR)\buildtime.obj"
	-@erase "$(INTDIR)\DSMPlugin.obj"
	-@erase "$(INTDIR)\Dtwinver.obj"
	-@erase "$(INTDIR)\HideDesktop.obj"
	-@erase "$(INTDIR)\rfbRegion_X11.obj"
	-@erase "$(INTDIR)\rfbUpdateTracker.obj"
	-@erase "$(INTDIR)\stdhdrs.obj"
	-@erase "$(INTDIR)\Test.obj"
	-@erase "$(INTDIR)\TextChat.obj"
	-@erase "$(INTDIR)\translate.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\videodriver.obj"
	-@erase "$(INTDIR)\videodrivercheck.obj"
	-@erase "$(INTDIR)\vncabout.obj"
	-@erase "$(INTDIR)\vncbuffer.obj"
	-@erase "$(INTDIR)\vncclient.obj"
	-@erase "$(INTDIR)\vncdesktop.obj"
	-@erase "$(INTDIR)\vncDesktopSW.obj"
	-@erase "$(INTDIR)\vncdesktopthread.obj"
	-@erase "$(INTDIR)\vncencodehext.obj"
	-@erase "$(INTDIR)\vncencoder.obj"
	-@erase "$(INTDIR)\vncencoderCursor.obj"
	-@erase "$(INTDIR)\vncencodezrle.obj"
	-@erase "$(INTDIR)\vncinsthandler.obj"
	-@erase "$(INTDIR)\vnckeymap.obj"
	-@erase "$(INTDIR)\vnclog.obj"
	-@erase "$(INTDIR)\vncmenu.obj"
	-@erase "$(INTDIR)\vncMultiMonitor.obj"
	-@erase "$(INTDIR)\vncOSVersion.obj"
	-@erase "$(INTDIR)\vncproperties.obj"
	-@erase "$(INTDIR)\vncpropertiesPoll.obj"
	-@erase "$(INTDIR)\vncserver.obj"
	-@erase "$(INTDIR)\vncservice.obj"
	-@erase "$(INTDIR)\vncsockconnect.obj"
	-@erase "$(INTDIR)\vsocket.obj"
	-@erase "$(INTDIR)\winvnc.obj"
	-@erase "$(INTDIR)\winvnc.res"
	-@erase "$(INTDIR)\ZipUnzip32.obj"
	-@erase "$(OUTDIR)\WINVNC.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=xicl6.exe
CPP_PROJ=/nologo /MD /W3 /GX /Zi /O1 /I "..\omnithread" /I ".." /I "..\.." /D "NDEBUG" /D "__x86__" /D "__WIN32__" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "XMD_H" /D "_WINSTATIC" /D "SINGLECLICKULTRA" /D _WIN32_WINNT=0x501 /D _WIN32_IE=0x0500 /D "DRIVER" /Fp"$(INTDIR)\WINVNC.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /O3 /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x809 /fo"$(INTDIR)\winvnc.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\WINVNC.bsc" 
BSC32_SBRS= \
	
LINK32=xilink6.exe
LINK32_FLAGS=wsock32.lib winmm.lib kernel32.lib user32.lib gdi32.lib shell32.lib version.lib comctl32.lib ole32.lib advapi32.lib /nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\WINVNC.pdb" /machine:I386 /out:"$(OUTDIR)\WINVNC.exe" /OPT:NOWIN98 /OPT:REF /filealign:0x200 
LINK32_OBJS= \
	"$(INTDIR)\black_layered.obj" \
	"$(INTDIR)\buildtime.obj" \
	"$(INTDIR)\DSMPlugin.obj" \
	"$(INTDIR)\Dtwinver.obj" \
	"$(INTDIR)\HideDesktop.obj" \
	"$(INTDIR)\rfbRegion_X11.obj" \
	"$(INTDIR)\rfbUpdateTracker.obj" \
	"$(INTDIR)\stdhdrs.obj" \
	"$(INTDIR)\Test.obj" \
	"$(INTDIR)\TextChat.obj" \
	"$(INTDIR)\translate.obj" \
	"$(INTDIR)\videodriver.obj" \
	"$(INTDIR)\videodrivercheck.obj" \
	"$(INTDIR)\vncabout.obj" \
	"$(INTDIR)\vncbuffer.obj" \
	"$(INTDIR)\vncclient.obj" \
	"$(INTDIR)\vncdesktop.obj" \
	"$(INTDIR)\vncDesktopSW.obj" \
	"$(INTDIR)\vncdesktopthread.obj" \
	"$(INTDIR)\vncencodehext.obj" \
	"$(INTDIR)\vncencoder.obj" \
	"$(INTDIR)\vncencoderCursor.obj" \
	"$(INTDIR)\vncencodezrle.obj" \
	"$(INTDIR)\vncinsthandler.obj" \
	"$(INTDIR)\vnckeymap.obj" \
	"$(INTDIR)\vnclog.obj" \
	"$(INTDIR)\vncmenu.obj" \
	"$(INTDIR)\vncMultiMonitor.obj" \
	"$(INTDIR)\vncOSVersion.obj" \
	"$(INTDIR)\vncproperties.obj" \
	"$(INTDIR)\vncpropertiesPoll.obj" \
	"$(INTDIR)\vncserver.obj" \
	"$(INTDIR)\vncservice.obj" \
	"$(INTDIR)\vncsockconnect.obj" \
	"$(INTDIR)\vsocket.obj" \
	"$(INTDIR)\winvnc.obj" \
	"$(INTDIR)\ZipUnzip32.obj" \
	"$(INTDIR)\winvnc.res"

"$(OUTDIR)\WINVNC.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
   cl /nologo /MT /Fo..\Release\ /Fd..\Release\ /c buildtime.cpp
	 $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

SOURCE="$(InputPath)"

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("WINVNC.DEP")
!INCLUDE "WINVNC.DEP"
!ELSE 
!MESSAGE Warning: cannot find "WINVNC.DEP"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "winvnc - Win32 Release" || "$(CFG)" == "winvnc - Win32 Debug" || "$(CFG)" == "winvnc - Win32 SINGLECLICK"
SOURCE=.\black_layered.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\black_layered.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\black_layered.obj"	"$(INTDIR)\black_layered.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\black_layered.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\buildtime.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\buildtime.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\buildtime.obj"	"$(INTDIR)\buildtime.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\buildtime.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=..\..\DSMPlugin\DSMPlugin.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\DSMPlugin.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\DSMPlugin.obj"	"$(INTDIR)\DSMPlugin.sbr" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\DSMPlugin.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\Dtwinver.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\Dtwinver.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\Dtwinver.obj"	"$(INTDIR)\Dtwinver.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\Dtwinver.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\HideDesktop.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\HideDesktop.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\HideDesktop.obj"	"$(INTDIR)\HideDesktop.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\HideDesktop.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\rfbRegion_X11.cxx

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\rfbRegion_X11.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\rfbRegion_X11.obj"	"$(INTDIR)\rfbRegion_X11.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\rfbRegion_X11.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\rfbUpdateTracker.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\rfbUpdateTracker.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\rfbUpdateTracker.obj"	"$(INTDIR)\rfbUpdateTracker.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\rfbUpdateTracker.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\stdhdrs.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\stdhdrs.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\stdhdrs.obj"	"$(INTDIR)\stdhdrs.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\stdhdrs.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\tableinitcmtemplate.cpp
SOURCE=.\tableinittctemplate.cpp
SOURCE=.\tabletranstemplate.cpp
SOURCE=.\Test.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\Test.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\Test.obj"	"$(INTDIR)\Test.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\Test.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\TextChat.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\TextChat.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\TextChat.obj"	"$(INTDIR)\TextChat.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\TextChat.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\translate.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\translate.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\translate.obj"	"$(INTDIR)\translate.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\translate.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\videodriver.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\videodriver.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\videodriver.obj"	"$(INTDIR)\videodriver.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\videodriver.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\videodrivercheck.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\videodrivercheck.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\videodrivercheck.obj"	"$(INTDIR)\videodrivercheck.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\videodrivercheck.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\vncabout.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\vncabout.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\vncabout.obj"	"$(INTDIR)\vncabout.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\vncabout.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\vncbuffer.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\vncbuffer.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\vncbuffer.obj"	"$(INTDIR)\vncbuffer.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\vncbuffer.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\vncclient.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\vncclient.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\vncclient.obj"	"$(INTDIR)\vncclient.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\vncclient.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\vncdesktop.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\vncdesktop.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\vncdesktop.obj"	"$(INTDIR)\vncdesktop.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\vncdesktop.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\vncDesktopSW.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\vncDesktopSW.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\vncDesktopSW.obj"	"$(INTDIR)\vncDesktopSW.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\vncDesktopSW.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\vncdesktopthread.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\vncdesktopthread.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\vncdesktopthread.obj"	"$(INTDIR)\vncdesktopthread.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\vncdesktopthread.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\vncencodehext.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\vncencodehext.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\vncencodehext.obj"	"$(INTDIR)\vncencodehext.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\vncencodehext.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\vncencoder.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\vncencoder.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\vncencoder.obj"	"$(INTDIR)\vncencoder.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\vncencoder.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\vncencoderCursor.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\vncencoderCursor.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\vncencoderCursor.obj"	"$(INTDIR)\vncencoderCursor.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\vncencoderCursor.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\vncencodezrle.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\vncencodezrle.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\vncencodezrle.obj"	"$(INTDIR)\vncencodezrle.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\vncencodezrle.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\vncinsthandler.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\vncinsthandler.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\vncinsthandler.obj"	"$(INTDIR)\vncinsthandler.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\vncinsthandler.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\vnckeymap.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\vnckeymap.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\vnckeymap.obj"	"$(INTDIR)\vnckeymap.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\vnckeymap.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\vnclog.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\vnclog.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\vnclog.obj"	"$(INTDIR)\vnclog.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\vnclog.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\vncmenu.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\vncmenu.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\vncmenu.obj"	"$(INTDIR)\vncmenu.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\vncmenu.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\vncMultiMonitor.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\vncMultiMonitor.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\vncMultiMonitor.obj"	"$(INTDIR)\vncMultiMonitor.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\vncMultiMonitor.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\vncOSVersion.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\vncOSVersion.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\vncOSVersion.obj"	"$(INTDIR)\vncOSVersion.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\vncOSVersion.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\vncproperties.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\vncproperties.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\vncproperties.obj"	"$(INTDIR)\vncproperties.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\vncproperties.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\vncpropertiesPoll.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\vncpropertiesPoll.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\vncpropertiesPoll.obj"	"$(INTDIR)\vncpropertiesPoll.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\vncpropertiesPoll.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\vncserver.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\vncserver.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\vncserver.obj"	"$(INTDIR)\vncserver.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\vncserver.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\vncservice.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\vncservice.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\vncservice.obj"	"$(INTDIR)\vncservice.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\vncservice.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\vncsockconnect.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\vncsockconnect.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\vncsockconnect.obj"	"$(INTDIR)\vncsockconnect.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\vncsockconnect.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\vsocket.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\vsocket.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\vsocket.obj"	"$(INTDIR)\vsocket.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\vsocket.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\winvnc.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\winvnc.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\winvnc.obj"	"$(INTDIR)\winvnc.sbr" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\winvnc.obj" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\winvnc.rc

"$(INTDIR)\winvnc.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=..\..\ZipUnZip32\ZipUnzip32.cpp

!IF  "$(CFG)" == "winvnc - Win32 Release"


"$(INTDIR)\ZipUnzip32.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "winvnc - Win32 Debug"


"$(INTDIR)\ZipUnzip32.obj"	"$(INTDIR)\ZipUnzip32.sbr" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "winvnc - Win32 SINGLECLICK"


"$(INTDIR)\ZipUnzip32.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 


!ENDIF 

