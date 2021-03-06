//  Copyright (C) 1999 AT&T Laboratories Cambridge. All Rights Reserved.
//
//  This file is part of the VNC system.
//
//  The VNC system is free software; you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation; either version 2 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program; if not, write to the Free Software
//  Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307,
//  USA.
//
// If the source code for the VNC system is not available from the place 
// whence you received this file, check http://www.uk.research.att.com/vnc or contact
// the authors on vnc@uk.research.att.com for information on obtaining it.


// vncPropertiesPoll

// Object implementing the Properties dialog for WinVNC.
// The Properties dialog is displayed whenever the user selects the
// Properties option from the system tray menu.
// The Properties dialog also takes care of loading the program
// settings and saving them on exit.

class vncPropertiesPoll;

#if (!defined(_WINVNC_VNCPROPERTIESPOLL))
#define _WINVNC_VNCPROPERTIESPOLL

// Includes
#include "stdhdrs.h"
#include "vncServer.h"

// The vncPropertiesPoll class itself
class vncPropertiesPoll
{
public:
	// Constructor/destructor
	vncPropertiesPoll();
	~vncPropertiesPoll();

	// Initialisation
	BOOL Init(vncServer *server);
	// The dialog box window proc
	static BOOL CALLBACK DialogProcPoll(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam);

	// Display the properties dialog
	// If usersettings is TRUE then the per-user settings come up
	// If usersettings is FALSE then the default system settings come up
	void Show(BOOL show, BOOL usersettings);

	// Loading & saving of preferences
	void Load(BOOL usersettings);
	void ResetRegistry();





	// Implementation
protected:
	// The server object to which this properties object is attached.
	vncServer *			m_server;

	// Flag to indicate whether the currently loaded settings are for
	// the current user, or are default system settings
	BOOL				m_usersettings;


	// Making the loaded user prefs active
	void ApplyUserPrefs();

	BOOL m_returncode_valid;
	BOOL m_dlgvisible;

	BOOL m_pref_TurboMode;
	
	BOOL m_pref_PollUnderCursor;
	BOOL m_pref_PollForeground;
	BOOL m_pref_PollFullScreen;
	BOOL m_pref_PollConsoleOnly;
	BOOL m_pref_PollOnEventOnly;

	BOOL m_pref_Driver;
	BOOL m_pref_Hook;
	BOOL m_pref_Virtual;

};

#endif // _WINVNC_vncPropertiesPoll
