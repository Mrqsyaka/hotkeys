#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
sc2::
send, {CtrlDown}c{CtrlUp}
send, {CtrlDown}{LWinDown}{right}{CtrlUp}{LWinUp}
sleep 200
send, {AltDown}{tab}{AltUp}
sleep 200
send, {CtrlDown}a{CtrlUp}
send, {Delete}
send, {CtrlDown}v{CtrlUp}
return

sc3::
send, {CtrlDown}{LWinDown}{left}{CtrlUp}{LWinUp}
sleep 200
send, {AltDown}{tab}{AltUp}
Return

sc4::
sendinput, {sc15d}
sleep 250
sendinput, n
PostMessage, 0x50,,-0xF3EFBDE,, A ; українська мова
return

sc5::
send, {CtrlDown}{Left}{CtrlUp}
send, "
send, {CtrlDown}{right}{CtrlUp}
send, "
return

sc6::
send, {CtrlDown}{LWinDown}{right}{CtrlUp}{LWinUp}
sleep 200
send, {AltDown}{tab}{AltUp}