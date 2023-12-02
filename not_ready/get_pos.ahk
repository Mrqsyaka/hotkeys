#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
#SingleInstance, force
f1::
MouseGetPos,  OutputVarX, OutputVarY
Clipboard = %OutputVarX%, %OutputVarY%
ToolTip, %Clipboard%
SoundBeep, 432, 3000
ToolTip
Return
f2::
MouseGetPos,  OutputVarX2, OutputVarY2
Clipboard = %OutputVarX2%, %OutputVarY2%
ToolTip, %Clipboard%
SoundBeep, 432, 3000
ToolTip
Return
sc2::send, %OutputVarX%, %OutputVarY%
sc3::send, %OutputVarX2%, %OutputVarY2%