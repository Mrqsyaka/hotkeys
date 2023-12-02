#NoEnv
#InstallKeybdHook
#SingleInstance, force
SendMode Input
SetWorkingDir %A_ScriptDir%

sc30::
	Sleep, 100 ; you get 100 ms to press Y else the 200 MS timer for B starts
	If GetKeyState("y","P") = 1 ; Both B and Y are pressed down
	{
		Gosub Mysubroutine4b
	}
	Else
	{
		KeyWait, B, T0.1 ; 0.1 seconds = (100 ms) Only 100MS because the Sleep 100 above makes up 100 too (so 100 + 100 = 200)
		If ErrorLevel = 0 ; B released before 200ms seconds completed
		{
			SendInput, b ; Click Somewhere goes here
		}
		Else ; B held for 200ms (total) or greater
		{
			Gosub MySubroutine4b
		}
	}
Return

sc18::
	Sleep, 100 ; you get 100 ms to press B else the 200 MS timer for Y starts
	If GetKeyState("b","P") = 1 ; Both Y and B are pressed down
	{
		Gosub Mysubroutine4b
	}
	Else
	{
		KeyWait, Y, T0.1 ; 0.1 seconds = (100 ms) Only 100MS because the Sleep 100 above makes up 100 too (so 100 + 100 = 200)
		If ErrorLevel = 0 ; Y released before 200ms seconds completed
		{
			sendinput, y ; Click Somewhere goes here
		}
		Else ; Y held for 200ms (total) or greater
		{
			sendinput,
		}
	}
Return

MySubroutine4y:
	; Do something goes here
Return

MySubroutine4b:
	; Do something goes here
Return