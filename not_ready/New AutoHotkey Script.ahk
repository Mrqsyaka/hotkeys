 #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
 #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#if winactive("ahk_class TRectangleCapture")
{
    sc24::send, {left 50}
    sc25::send, {down 50}
    sc26::send, {up 50}
    sc27::send, {right 50}
    +sc24::send, {left 1}
    +sc25::send, {down 1}
    +sc26::send, {up 1}
    +sc27::send, {right 1}
    !sc24::send, {left 200}
    !sc25::send, {down 200}
    !sc26::send, {up 200}
    !sc27::send, {right 200}
    +!sc24::send, {left 10}
    +!sc25::send, {down 10}
    +!sc26::send, {up 10}
    +!sc27::send, {right 10}
    sc1e::send, {left}
    sc1f::send, {down}
    sc20::send, {up}
    sc21::send, {right}
}
#if


#if GetKeyState("Space", "P")
BlockInput, Send
BlockInput, On
BlockInput, Default
sc17::
	send, {BackSpace}
	send, ü
	return
sc24::
	Send, {backspace}
    Send, ä
    return
sc25::
	Send, {backspace}
    Send, ß
    return
sc27::
	Send, {backspace}
    Send, ö
    return
#if

