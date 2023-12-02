#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; rbutton & WheelDown::send, {Volume_Down}
; rbutton & WheelUp::send, {Volume_Up}

rbutton::
mousegetpos xpos1,ypos1
settimer,gtrack,1
return

rbutton up::
settimer,gtrack,off
if (gtrack = ""){
	Click, Right
}
else if (gtrack = "r" || gtrack = "ru" || gtrack = "rd"){
	send {LWin Down}{Ctrl Down}{Left}{Ctrl Up}{LWin Up}
}
else if (gtrack = "l" || gtrack = "lu" || gtrack = "ld"){
	send {LWin Down}{Ctrl Down}{Right}{Ctrl Up}{LWin Up}
}
else if (gtrack = "u"){
	send #{tab}
}
else if (gtrack = "d"){
	send #{d}
}
gtrack=
return

gtrack:
mousegetpos xpos2,ypos2
track:=(abs(ypos1-ypos2)>abs(xpos1-xpos2)) ? (ypos1>ypos2 ? "u" : "d") : (xpos1>xpos2 ? "l" : "r")
if (track<>SubStr(gtrack, 0)) and (abs(ypos1-ypos2)>40 or abs(xpos1-xpos2)>40)
   gtrack.=track
xpos1:=xpos2,ypos1:=ypos2
return
