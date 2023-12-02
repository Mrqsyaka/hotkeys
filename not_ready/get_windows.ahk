; ; #SingleInstance, Force

; ; f1::
; ; WinGet, windows, List
; ; Loop %windows%
; ; {
; ;     thisWindow := windows%A_Index%
; ;     WinGet, activeWindowExe, ProcessName, % "ahk_id " thisWindow
; ;     tooltip, %activeWindowExe%

; ;     targetDesktop := WindowToDesktopMapping[activeWindowExe]

; ;     if (targetDesktop != "")
; ;     {
; ;         MoveWindowToDesktop(windows%A_Index%, targetDesktop)
; ;     }
; ;     else
; ;     {
; ;         MoveWindowToDesktop(windows%A_Index%, 1)
; ;     }
; ; }
; ; Return

; ; MoveWindowToDesktop(one, two){
; ;     msgbox, hell
; ; }
; #SingleInstance, Force

; ; Constants
; WM_SYSCOMMAND := 0x0112
; SC_MOVE := 0xF010
; SC_MONITORPOWER := 0xF170

; sc2::
; ; Specify the target virtual desktop index (starting from 0)
; targetDesktopIndex := 2

; ; Get the active window handle (hwnd)
; WinGet, activeWindow, ID, A

; ; Get the handle of the target virtual desktop
; targetDesktopHandle := GetDesktopHandle(targetDesktopIndex)

; ; Move the window to the target virtual desktop
; SendMessage(activeWindow, WM_SYSCOMMAND, SC_MOVE|2, targetDesktopHandle)

; ; Show the moved window
; WinActivate, ahk_id %activeWindow%

; return

; GetDesktopHandle(desktopIndex)
; {
;     SysGet, hWnd, 63
;     WinGetClass, vDeskClass, ahk_id %hWnd%
;     if (vDeskClass = "VirtualDesktopPinnedApps")
;     {
;         Loop
;         {
;             hWnd := DllCall("FindWindowEx", "Ptr", hWnd, "Ptr", 0, "Str", "SHELLDLL_DefView", "Ptr", 0)
;             IfEqual, hWnd, 0, Break
;             desktopCount++
;         }
;         If (desktopIndex >= 0 && desktopIndex <= desktopCount)
;         {
;             hWnd := DllCall("FindWindowEx", "Ptr", hWnd, "Ptr", 0, "Str", "SysListView32", "Ptr", 0)
;             Loop, %desktopIndex%
;                 hWnd := DllCall("GetWindow", "Ptr", hWnd, "UInt", 2)
;             Return hWnd
;         }
;     }
;     Return 0
; }

; SendMessage(hWnd, Msg, wParam, lParam)
; {
;     return DllCall("SendMessage", "Ptr", hWnd, "UInt", Msg, "Ptr", wParam, "Ptr", lParam)
; }
F7::
  WinGet, activeWindow, ID, A
  WinGetClass, activeWindowClass, ahk_id %activeWindow%
  WinGetTitle, activeWindowTitle, ahk_id %activeWindow%

  ; Specify the virtual desktop number (0-based index)
  targetDesktop := 2

  ; Move the window to the target virtual desktop
  WinActivate, Desktop %targetDesktop%
  WinWaitActive, Desktop %targetDesktop%
  WinActivate, ahk_id %activeWindow%
return
