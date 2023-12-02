; #SingleInstance, Force
; SendMode Input
; SetWorkingDir, %A_ScriptDir%
#InstallKeybdHook
; #InstallMouseHook
; RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Policies\System, DisableLockWorkstation, 1
; RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Policies\System, DisableLockWorkstation, 0 ; enable



; *****************************
; Menu Virtual Desktops
; *****************************

#NoEnv
#SingleInstance Force
ListLines Off
SetBatchLines -1
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#WinActivateForce
Process, Priority,, H
SetWinDelay -1
SetControlDelay -1
run "C:\Users\Msqsyaka\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Brave Browser.lnk"

DetectHiddenWindows, On
vd_init()
Return

sc56 & sc27::VD_sendToDesktop(A,(VD_getCurrentDesktop()+1),true)
sc56 & sc24::VD_sendToDesktop(A,(VD_getCurrentDesktop()-1),true)
+!sc27::VD_goToDesktop(VD_getCurrentDesktop()+1)
+!sc24::VD_goToDesktop(VD_getCurrentDesktop()-1)



ActivateWindow:
	ID := StrSplit(A_ThisMenuItem, A_Tab).2
	; VD_sendToCurrentDesktop("ahk_id" . ID,activate:=true)
	WinActivate, ahk_id %ID%
return

Desktop_GoTo:
	DesktopNR := StrSplit(A_ThisMenuItem,"_").2
	OutputVar := VD_getCurrentDesktop()
	If (OutputVar != DesktopNR)
		VD_goToDesktop(DesktopNR)
return

EDITSCRIPT:
	Edit
return

Menu_Windows_Desktop(DesktopNR){
	Aktive_Desktop := VD_getCurrentDesktop()
	If (Aktive_Desktop = DesktopNR )
	{
		Menu, Windows, Add, Desktop_%DesktopNR%_Aktive, Desktop_GoTo
		; Menu, Windows, Icon, Desktop_%DesktopNR%_Aktive, %A_ScriptDir%\Icons\Desktop_%DesktopNR%.bmp
		Menu, Windows, Add
	}
	else
	{
		Menu, Windows, Add, Desktop_%DesktopNR%, Desktop_GoTo
		; Menu, Windows, Icon, Desktop_%DesktopNR%, %A_ScriptDir%\Icons\Desktop_%DesktopNR%.bmp
		Menu, Windows, Add
	}
    WinGet, id, list,,, Program Manager
    Loop, %id%
    {
        this_ID := id%A_Index%
		If  NOT VD_isValidWindow(WinExist("ahk_id" . this_ID))
			continue
		If NOT IsWindow(WinExist("ahk_id" . this_ID))
			continue
		DesktopOfWindow := VD_getDesktopOfWindow("ahk_id " this_ID)
		wins%DesktopOfWindow% .= this_ID ? this_ID " " : ""
	}
	Loop, parse, wins%DesktopNR%, %A_Space%
	{
		If VD_isValidWindow(WinExist("ahk_id" . A_Loopfield))
		{
			WinGetTitle, title, ahk_id %A_Loopfield%
			WinGet, Path, ProcessPath, ahk_id %A_Loopfield%
			Menu, Windows, Add, %title%%A_Tab%%A_Loopfield%, ActivateWindow
			Try
				Menu, Windows, Icon, %title%%A_Tab%%A_Loopfield%, %Path%
			Catch
				Menu, Windows, Icon, %title%%A_Tab%%A_Loopfield%, %A_WinDir%\System32\SHELL32.dll, 3
		}
	}
}

;-----------------------------------------------------------------
; Check whether the window is in fact a window
; as opposed to the desktop or a menu, etc.
;-----------------------------------------------------------------
IsWindow(hwnd){
	WinGet, Style, Style, ahk_id %hWnd%
	if !((Style&0xC00000) || (Style&0x100))
	{
		WinGetClass, Class, ahk_id %hWnd%
		if (Class = "#32770")
		{
			WinGetTitle, title, ahk_id %hWnd%
			If title  contains XpdfReader,Woody Gammon,FastCopy
			return true
		}
		return false
	}
	return true
}

; *********************************************************************
; VD.ahk (old version)
; *********************************************************************
; VD.ahk : Virtual Desktop (move window, go to VD of your choice instantly, get Which VD you are in, etc.)
; Post by MrDoge » 18 Nov 2020 03:43

; must call VD_init() before any of these functions
; VD_getCurrentDesktop() ;this will return whichDesktop
; VD_getDesktopOfWindow(wintitle) ;this will return whichDesktop ;please use VD_goToDesktopOfWindow instead if you just want to go there.
; VD_getCount() ;this will return the number of virtual desktops you currently have
; VD_goToDesktop(whichDesktop)
; VD_goToDesktopOfWindow(wintitle, activate:=true)
; VD_sendToDesktop(wintitle,whichDesktop,followYourWindow:=false,activate:=true)
; VD_sendToCurrentDesktop(wintitle,activate:=true)

; internal functions
; VD_getCurrentIVirtualDesktop()
; VD_SwitchDesktop(IVirtualDesktop)
; VD_isValidWindow(hWnd)
; VD_getWintitle(hWnd)
; VD_AltTab(){
; VD_IsWindow(hWnd){
; VD_vtable(ppv, idx)

/*

#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, force
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

Gui,Font, s12, Segoe UI
gui, add, text,, Press ^d to come back to this window`nPress ^f to see which desktop this window is in`nPress Capslock to see your current virtual desktop`nPress F8 to move this to Desktop2`nPress F2 to go to Desktop2`nPress F6 to move this to Desktop3 and go to Desktop 3 (follow the window)
gui, show,, VD_examplesWinTile

vd_init()
return

^d::
    VD_goToDesktopOfWindow("VD_examplesWinTile")
    ; VD_goToDesktopOfWindow("ahk_exe code.exe")
return

^f::
    msgbox % VD_getDesktopOfWindow("VD_examplesWinTile")    ; %
    ; p(VD_getDesktopOfWindow("ahk_exe GitHubDesktop.exe"))
return

Capslock::
    msgbox % VD_getCurrentDesktop()   ; %
return

ScrollLock::
    msgbox % VD_getCount()   ; %
return

F1::
VD_goToDesktop(1)
return

F2::
VD_goToDesktop(2)
return

F3::
VD_goToDesktop(3)
return


F4::
VD_sendToDesktop(A,1,true)
return


F5::
VD_sendToDesktop(A,2,true)
return

F6::
VD_sendToDesktop(A,3,true)
return

F7::
VD_sendToDesktop(A,1)
return

F8::
VD_sendToDesktop(A,2)
return

F9::
VD_sendToDesktop(A,3)
return

 */

VD_init()
{
    global
    IVirtualDesktopManager := ComObjCreate("{AA509086-5CA9-4C25-8F95-589D3C07B48A}", "{A5CD92FF-29BE-454C-8D04-D82879FB3F1B}")
    GetWindowDesktopId := VD_vtable(IVirtualDesktopManager, 4)

    IServiceProvider := ComObjCreate("{C2F03A33-21F5-47FA-B4BB-156362A2F239}", "{6D5140C1-7436-11CE-8034-00AA006009FA}")
    IVirtualDesktopManagerInternal := ComObjQuery(IServiceProvider, "{C5E0CDCA-7B6E-41B2-9FC4-D93975CC467B}", "{F31574D6-B682-4CDC-BD56-1827860ABEC6}")
    MoveViewToDesktop := VD_vtable(IVirtualDesktopManagerInternal, 4) ; void MoveViewToDesktop(object pView, IVirtualDesktop desktop);
    GetCurrentDesktop := VD_vtable(IVirtualDesktopManagerInternal, 6) ; IVirtualDesktop GetCurrentDesktop();
    CanViewMoveDesktops := VD_vtable(IVirtualDesktopManagerInternal, 5) ; bool CanViewMoveDesktops(object pView);
    GetDesktops := VD_vtable(IVirtualDesktopManagerInternal, 7) ; IObjectArray GetDesktops();
    SwitchDesktop := VD_vtable(IVirtualDesktopManagerInternal, 9) ; void SwitchDesktop(IVirtualDesktop desktop);

    ImmersiveShell := ComObjCreate("{C2F03A33-21F5-47FA-B4BB-156362A2F239}", "{00000000-0000-0000-C000-000000000046}")
    if !(IApplicationViewCollection := ComObjQuery(ImmersiveShell,"{1841C6D7-4F9D-42C0-AF41-8747538F10E5}","{1841C6D7-4F9D-42C0-AF41-8747538F10E5}" ) ) ; 1607-1809
    {
        MsgBox IApplicationViewCollection interface not supported.
    }
    GetViewForHwnd := VD_vtable(IApplicationViewCollection, 6) ; (IntPtr hwnd, out IApplicationView view);
}

VD_getCurrentIVirtualDesktop()
{
    CurrentIVirtualDesktop := 0
    DllCall(GetCurrentDesktop, "UPtr", IVirtualDesktopManagerInternal, "UPtrP", CurrentIVirtualDesktop, "UInt")
    return CurrentIVirtualDesktop
}

VD_getCurrentDesktop() ;this will return whichDesktop
{
    global
    CurrentIVirtualDesktop := 0
    DllCall(GetCurrentDesktop, "UPtr", IVirtualDesktopManagerInternal, "UPtrP", CurrentIVirtualDesktop, "UInt")

    VarSetCapacity(vd_strGUID, (38 + 1) * 2)
    VarSetCapacity(vd_GUID, 16)

    DllCall(VD_vtable(CurrentIVirtualDesktop,4), "UPtr", CurrentIVirtualDesktop, "UPtr", &vd_GUID, "UInt")

    DllCall("Ole32.dll\StringFromGUID2", "UPtr", &vd_GUID, "UPtr", &vd_strGUID, "Int", 38 + 1)
    currentDesktop_strGUID:=StrGet(&vd_strGUID, "UTF-16")

    ; IVirtualDesktopManagerInternal::GetDesktops method
    IObjectArray := 0
    DllCall(GetDesktops, "UPtr", IVirtualDesktopManagerInternal, "UPtrP", IObjectArray, "UInt")
    ; IObjectArray::GetCount method
    ; https://docs.microsoft.com/en-us/windows/desktop/api/objectarray/nf-objectarray-iobjectarray-getcount
    vd_Count := 0
    DllCall(VD_vtable(IObjectArray,3), "UPtr", IObjectArray, "UIntP", vd_Count, "UInt")

    IVirtualDesktop := 0
    Loop % (vd_Count)   ; %
    {
        ; https://github.com/nullpo-head/Windows-10-Virtual-Desktop-Switching-Shortcut/blob/master/VirtualDesktopSwitcher/VirtualDesktopSwitcher/VirtualDesktops.h
        DllCall("Ole32.dll\CLSIDFromString", "Str", "{FF72FFDD-BE7E-43FC-9C03-AD81681E88E4}", "UPtr", &vd_GUID)

        ; IObjectArray::GetAt method
        ; https://docs.microsoft.com/en-us/windows/desktop/api/objectarray/nf-objectarray-iobjectarray-getat
        DllCall(VD_vtable(IObjectArray,4), "UPtr", IObjectArray, "UInt", A_Index-1, "UPtr", &vd_GUID, "UPtrP", IVirtualDesktop, "UInt")

        ; IVirtualDesktop::GetID method
        DllCall(VD_vtable(IVirtualDesktop,4), "UPtr", IVirtualDesktop, "UPtr", &vd_GUID, "UInt")
        DllCall("Ole32.dll\StringFromGUID2", "UPtr", &vd_GUID, "UPtr", &vd_strGUID, "Int", 38 + 1)
        if (StrGet(&vd_strGUID, "UTF-16") = currentDesktop_strGUID) {
            return A_Index
        }
    }
}
VD_getDesktopOfWindow(wintitle)
{
    global
    DetectHiddenWindows, on
    WinGet, hwndsOfWinTitle, List, %wintitle%
    DetectHiddenWindows, off
    loop % hwndsOfWinTitle {
        IfEqual, False, % VD_isValidWindow(hwndsOfWinTitle%A_Index%), continue

        VarSetCapacity(vd_GUID, 16)
        vd_HRESULT := DllCall(GetWindowDesktopId, "UPtr", IVirtualDesktopManager, "Ptr", hwndsOfWinTitle%A_Index%, "UPtr", &vd_GUID, "UInt")
        if ( !vd_HRESULT ) ; OK
        {
            VarSetCapacity(vd_strGUID, (38 + 1) * 2)
            DllCall("Ole32.dll\StringFromGUID2", "UPtr", &vd_GUID, "UPtr", &vd_strGUID, "Int", 38 + 1)
            desktopOfWindow:=StrGet(&vd_strGUID, "UTF-16")
            if (desktopOfWindow and desktopOfWindow!="{00000000-0000-0000-0000-000000000000}") {
                break
            }
        }
    }
    ; IVirtualDesktopManagerInternal::GetDesktops method
    IObjectArray := 0
    DllCall(GetDesktops, "UPtr", IVirtualDesktopManagerInternal, "UPtrP", IObjectArray, "UInt")
    ; IObjectArray::GetCount method
    ; https://docs.microsoft.com/en-us/windows/desktop/api/objectarray/nf-objectarray-iobjectarray-getcount
    vd_Count := 0
    DllCall(VD_vtable(IObjectArray,3), "UPtr", IObjectArray, "UIntP", vd_Count, "UInt")

    VarSetCapacity(vd_strGUID, (38 + 1) * 2)
    VarSetCapacity(vd_GUID, 16)

    IVirtualDesktop := 0
    Loop % (vd_Count)   ; %
    {
        ; https://github.com/nullpo-head/Windows-10-Virtual-Desktop-Switching-Shortcut/blob/master/VirtualDesktopSwitcher/VirtualDesktopSwitcher/VirtualDesktops.h
        DllCall("Ole32.dll\CLSIDFromString", "Str", "{FF72FFDD-BE7E-43FC-9C03-AD81681E88E4}", "UPtr", &vd_GUID)

        ; IObjectArray::GetAt method
        ; https://docs.microsoft.com/en-us/windows/desktop/api/objectarray/nf-objectarray-iobjectarray-getat
        DllCall(VD_vtable(IObjectArray,4), "UPtr", IObjectArray, "UInt", A_Index-1, "UPtr", &vd_GUID, "UPtrP", IVirtualDesktop, "UInt")

        ; IVirtualDesktop::GetID method
        DllCall(VD_vtable(IVirtualDesktop,4), "UPtr", IVirtualDesktop, "UPtr", &vd_GUID, "UInt")
        DllCall("Ole32.dll\StringFromGUID2", "UPtr", &vd_GUID, "UPtr", &vd_strGUID, "Int", 38 + 1)
        if (StrGet(&vd_strGUID, "UTF-16") = desktopOfWindow) {
            return A_Index
        }
    }
}
VD_getCount()
{
    global
    IObjectArray := 0
    DllCall(GetDesktops, "UPtr", IVirtualDesktopManagerInternal, "UPtrP", IObjectArray, "UInt")

    ; IObjectArray::GetCount method
    ; https://docs.microsoft.com/en-us/windows/desktop/api/objectarray/nf-objectarray-iobjectarray-getcount
    vd_Count := 0
    DllCall(VD_vtable(IObjectArray,3), "UPtr", IObjectArray, "UIntP", vd_Count, "UInt")
    return vd_Count
}
VD_goToDesktop(whichDesktop)
{
    global
    IObjectArray := 0
    DllCall(GetDesktops, "UPtr", IVirtualDesktopManagerInternal, "UPtrP", IObjectArray, "UInt")

    VarSetCapacity(vd_strGUID, (38 + 1) * 2)
    VarSetCapacity(vd_GUID, 16)

    IVirtualDesktop := 0

    ; https://github.com/nullpo-head/Windows-10-Virtual-Desktop-Switching-Shortcut/blob/master/VirtualDesktopSwitcher/VirtualDesktopSwitcher/VirtualDesktops.h
    DllCall("Ole32.dll\CLSIDFromString", "Str", "{FF72FFDD-BE7E-43FC-9C03-AD81681E88E4}", "UPtr", &vd_GUID)

    ; IObjectArray::GetAt method
    ; https://docs.microsoft.com/en-us/windows/desktop/api/objectarray/nf-objectarray-iobjectarray-getat
    DllCall(VD_vtable(IObjectArray,4), "UPtr", IObjectArray, "UInt", whichDesktop -1, "UPtr", &vd_GUID, "UPtrP", IVirtualDesktop, "UInt")

    VD_SwitchDesktop(IVirtualDesktop)
}

VD_goToDesktopOfWindow(wintitle, activate:=true)
{
    global
    DetectHiddenWindows, on
    WinGet, hwndsOfWinTitle, List, %wintitle%
    DetectHiddenWindows, off
    loop % hwndsOfWinTitle {
        IfEqual, False, % VD_isValidWindow(hwndsOfWinTitle%A_Index%), continue

        VarSetCapacity(vd_GUID, 16)
        vd_HRESULT := DllCall(GetWindowDesktopId, "UPtr", IVirtualDesktopManager, "Ptr", hwndsOfWinTitle%A_Index%, "UPtr", &vd_GUID, "UInt")
        if ( !vd_HRESULT ) ; OK
        {
            VarSetCapacity(vd_strGUID, (38 + 1) * 2)
            DllCall("Ole32.dll\StringFromGUID2", "UPtr", &vd_GUID, "UPtr", &vd_strGUID, "Int", 38 + 1)
            desktopOfWindow:=StrGet(&vd_strGUID, "UTF-16")
            if (desktopOfWindow and desktopOfWindow!="{00000000-0000-0000-0000-000000000000}") {
                theHwnd:=hwndsOfWinTitle%A_Index%
                break
            }
        }
    }

    ; IVirtualDesktopManagerInternal::GetDesktops method
    IObjectArray := 0
    DllCall(GetDesktops, "UPtr", IVirtualDesktopManagerInternal, "UPtrP", IObjectArray, "UInt")
    ; IObjectArray::GetCount method
    ; https://docs.microsoft.com/en-us/windows/desktop/api/objectarray/nf-objectarray-iobjectarray-getcount
    vd_Count := 0
    DllCall(VD_vtable(IObjectArray,3), "UPtr", IObjectArray, "UIntP", vd_Count, "UInt")

    VarSetCapacity(vd_strGUID, (38 + 1) * 2)
    VarSetCapacity(vd_GUID, 16)

    IVirtualDesktop := 0
    Loop % (vd_Count)   ; %
    {
        ; https://github.com/nullpo-head/Windows-10-Virtual-Desktop-Switching-Shortcut/blob/master/VirtualDesktopSwitcher/VirtualDesktopSwitcher/VirtualDesktops.h
        DllCall("Ole32.dll\CLSIDFromString", "Str", "{FF72FFDD-BE7E-43FC-9C03-AD81681E88E4}", "UPtr", &vd_GUID)

        ; IObjectArray::GetAt method
        ; https://docs.microsoft.com/en-us/windows/desktop/api/objectarray/nf-objectarray-iobjectarray-getat
        DllCall(VD_vtable(IObjectArray,4), "UPtr", IObjectArray, "UInt", A_Index-1, "UPtr", &vd_GUID, "UPtrP", IVirtualDesktop, "UInt")

        ; IVirtualDesktop::GetID method
        DllCall(VD_vtable(IVirtualDesktop,4), "UPtr", IVirtualDesktop, "UPtr", &vd_GUID, "UInt")
        DllCall("Ole32.dll\StringFromGUID2", "UPtr", &vd_GUID, "UPtr", &vd_strGUID, "Int", 38 + 1)
        if (StrGet(&vd_strGUID, "UTF-16") = desktopOfWindow) {
            VD_SwitchDesktop(IVirtualDesktop)
            if (activate)
                WinActivate, ahk_id %theHwnd%
        }
    }
}
VD_sendToDesktop(wintitle,whichDesktop,followYourWindow:=false,activate:=true)
{
    global
    thePView:=0

    DetectHiddenWindows, on
    WinGet, outHwndList, List, %wintitle%
    DetectHiddenWindows, off
    loop % outHwndList {
        IfEqual, False, % VD_isValidWindow(outHwndList%A_Index%), continue

        pView := 0
        DllCall(GetViewForHwnd, "UPtr", IApplicationViewCollection, "Ptr", outHwndList%A_Index%, "Ptr*", pView, "UInt")

        pfCanViewMoveDesktops := 0
        DllCall(CanViewMoveDesktops, "ptr", IVirtualDesktopManagerInternal, "Ptr", pView, "int*", pfCanViewMoveDesktops, "UInt") ; return value BOOL
        if (pfCanViewMoveDesktops)
        {
            theHwnd:=outHwndList%A_Index%
            thePView:=pView
            break
        }
    }

    if (thePView) {
        IObjectArray := 0
        DllCall(GetDesktops, "UPtr", IVirtualDesktopManagerInternal, "UPtrP", IObjectArray, "UInt")

        VarSetCapacity(vd_strGUID, (38 + 1) * 2)
        VarSetCapacity(vd_GUID, 16)

        IVirtualDesktop := 0

        ; https://github.com/nullpo-head/Windows-10-Virtual-Desktop-Switching-Shortcut/blob/master/VirtualDesktopSwitcher/VirtualDesktopSwitcher/VirtualDesktops.h
        DllCall("Ole32.dll\CLSIDFromString", "Str", "{FF72FFDD-BE7E-43FC-9C03-AD81681E88E4}", "UPtr", &vd_GUID)

        ; IObjectArray::GetAt method
        ; https://docs.microsoft.com/en-us/windows/desktop/api/objectarray/nf-objectarray-iobjectarray-getat
        DllCall(VD_vtable(IObjectArray,4), "UPtr", IObjectArray, "UInt", whichDesktop -1, "UPtr", &vd_GUID, "UPtrP", IVirtualDesktop, "UInt")

        DllCall(MoveViewToDesktop, "ptr", IVirtualDesktopManagerInternal, "Ptr", thePView, "UPtr", IVirtualDesktop, "UInt")

        if (followYourWindow) {
            VD_SwitchDesktop(IVirtualDesktop)
        }
    }
}

VD_sendToCurrentDesktop(wintitle,activate:=true)
{
    global

    DetectHiddenWindows, on
    WinGet, outHwndList, List, %wintitle%
    DetectHiddenWindows, off

    pfCanViewMoveDesktops:=false
    thePView:=0
    loop % outHwndList {
        IfEqual, False, % VD_isValidWindow(outHwndList%A_Index%), continue

        pView := 0
        DllCall(GetViewForHwnd, "UPtr", IApplicationViewCollection, "Ptr", outHwndList%A_Index%, "Ptr*", pView, "UInt")

        pfCanViewMoveDesktops := 0
        DllCall(CanViewMoveDesktops, "ptr", IVirtualDesktopManagerInternal, "Ptr", pView, "int*", pfCanViewMoveDesktops, "UInt") ; return value BOOL
        if (pfCanViewMoveDesktops)
        {
            theHwnd:=outHwndList%A_Index%
            thePView:=pView
            break
        }
    }
    if (pfCanViewMoveDesktops) {
        CurrentIVirtualDesktop := 0
        DllCall(GetCurrentDesktop, "UPtr", IVirtualDesktopManagerInternal, "UPtrP", CurrentIVirtualDesktop, "UInt")

        DllCall(MoveViewToDesktop, "ptr", IVirtualDesktopManagerInternal, "Ptr", thePView, "UPtr", CurrentIVirtualDesktop, "UInt")
        if (activate)
            winactivate, ahk_id %theHwnd%
    }

}


;start of internal functions
VD_SwitchDesktop(IVirtualDesktop)
{
    global
    winactivate, ahk_class Shell_TrayWnd
    WinWaitActive, ahk_class Shell_TrayWnd
    DllCall(SwitchDesktop, "ptr", IVirtualDesktopManagerInternal, "UPtr", IVirtualDesktop, "UInt")
    DllCall(SwitchDesktop, "ptr", IVirtualDesktopManagerInternal, "UPtr", IVirtualDesktop, "UInt")
    WinMinimize, ahk_class Shell_TrayWnd
}

VD_isValidWindow(hWnd)
{
    DetectHiddenWindows, on
    return (VD_getWintitle(hWnd) and VD_IsWindow(hWnd))
    DetectHiddenWindows, off
}
VD_getWintitle(hWnd) {
    WinGetTitle, title, ahk_id %hWnd%
    return title
}
VD_IsWindow(hWnd){
    ; DetectHiddenWindows, on
    WinGet, dwStyle, Style, ahk_id %hWnd%
    if ((dwStyle&0x08000000) || !(dwStyle&0x10000000)) {
        return false
    }
    WinGet, dwExStyle, ExStyle, ahk_id %hWnd%
    if (dwExStyle & 0x00000080) {
        return false
    }
    WinGetClass, szClass, ahk_id %hWnd%
    if (szClass = "TApplication") {
        return false
    }
    ; DetectHiddenWindows, off
    return true
}

VD_vtable(ppv, idx)
{
    Return NumGet(NumGet(1*ppv)+A_PtrSize*idx)
}

!sc23::sendinput, {Delete}

::abv::
    sendraw,{{} \above{1px} {}}
    sendinput, {left 17}

