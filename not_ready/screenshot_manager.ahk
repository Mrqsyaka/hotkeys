#NoEnv
#InstallKeybdHook
#SingleInstance, force
SendMode Input
SetWorkingDir %A_ScriptDir%
number_of_spaces = 0
~Space::number_of_spaces++
if (number_of_spaces >= 2)
{
    ExitApp
}
~Esc::ExitApp
~Enter::ExitApp

+sc24::move("left", 100)
+sc25::move("down", 100)
+sc26::move("up", 100)
+sc27::move("right", 100)

^sc24::move("left",25)
^sc25::move("down",25)
^sc26::move("up",25)
^sc27::move("right",25)

~sc24::move("left", 10)
~sc25::move("down", 10)
~sc26::move("up", 10)
~sc27::move("right", 10)
global T := False

return
~#w::
T := True
return


move(direction, number){
    if (T == True)
    {
        sendinput, {%direction% %number%}
    }
}

subroutine:
exit
ExitApp