#NoEnv
#InstallKeybdHook
#SingleInstance, force
SendMode Input
SetWorkingDir %A_ScriptDir%
DetectHiddenWindows, On
if GetKeyState("CapsLock", "T") = 1
{
SetCapsLockState, Off
}
else
SetCapsLockState, On


return
f2::
    WinGet, activeprocess, ProcessName, A
    Clipboard = %activeprocess%
return

f1::
    WinGet, activeprocess, ProcessName, A
    Clipboard = %activeprocess%
    WinKill, ahk_exe hh.exe

    if WinExist("ahk_exe Code.exe") && (activeprocess != "Code.exe")
    {
        while(if WinExist("ahk_exe Code.exe"))
        {
            winactivate ahk_exe Code.exe
            WinWaitActive, ahk_exe Code.exe
            sendinput, ^+q
        }
    }
    sleep 20
    if WinExist("ahk_exe brave.exe") && (activeprocess != "brave.exe")
    {
        SendInput, #1
        while(WinExist("ahk_exe brave.exe") && (activeprocess != "brave.exe")){
            ImageSearch, OutputVarX, OutputVarY, 250, 30, 1730, 0 , "F:\Shortcuts\FG\Shortcuts\Screen-531.png"
            MouseClick, left , OutputVarX+30 ,OutputVarY+10
            sendinput, ^+w
        }
    }
    sleep 20
    if WinExist("ahk_exe Telegram.exe") && (activeprocess != "Telegram.exe")
    {
        while(if WinExist("ahk_exe Telegram.exe"))
        {
            sendinput, #2
            WinWaitActive, ahk_exe Telegram.exe
            sendinput, ^q
        }
    }
    sleep 300

    while (WinExist("ahk_class CabinetWClass"))
    {
        winactivate ahk_class CabinetWClass
        WinWaitActive, ahk_class CabinetWClass
        sendinput, ^w
        ; WinWaitClose, ahk_class CabinetWClass
    }