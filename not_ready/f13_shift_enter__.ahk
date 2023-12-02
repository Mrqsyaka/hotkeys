#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, force
#InstallKeybdHook
#Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
; final = 0
; F14::
; Send {Shift down}
; KeyWait, F14
; final = %ErrorLevel%
; return
; F14 Up::
; KeyWait, Shift
; Send {Shift up}
; if final < 100
; {
;     Send {Enter}
; }
; return


; #IfWinActive

; F13::
; KeyWait, F13, T100
; If ErrorLevel
; {
;     Send {Shift down}
;     KeyWait, F13
;     Send {Shift up}
; }
; return

; F13 Up::
; Send {Enter}
; return

; #IfWinActive

; F14::
; KeyWait, F14, L, T0.1

; If ErrorLevel
; {
;     SoundBeep, 1760, 200
;     Send {Shift down}
;     KeyWait, F14
;     Send {Shift up}
; }
; else
; {
;     sendinput, {enter}
; }
; return














#IfWinActive
+f14::send,+{space}
f14::
send, {Shift Down}
KeyWait, f14
KeyWait, f14
send, {ShiftUp}
If (A_PriorKey = "f14")
{
    sendinput, {enter}
}
return



#IfWinActive
