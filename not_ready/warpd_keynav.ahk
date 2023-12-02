#NoEnv
#InstallKeybdHook
#InstallMouseHook
#SingleInstance, force
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance force
#IfWinExist,_keynav

;qwfp

sc10::
    posX = 0
    posY = 0
    scWidth = 480
    scHeight = 360
    Draw( _keynav, posX, posY, scWidth, scHeight )
Return
sc11::
    posX = 481
    posY = 0
    scWidth = 480
    scHeight = 360
    Draw( _keynav, posX, posY, scWidth, scHeight )
Return
sc12::
    posX = 961
    posY = 0
    scWidth = 480
    scHeight = 360
    Draw( _keynav, posX, posY, scWidth, scHeight )
Return
sc13::
    posX = 1441
    posY = 0
    scWidth = 480
    scHeight = 360
    Draw( _keynav, posX, posY, scWidth, scHeight )
Return

;arst
sc1e::
    posX = 0
    posY = 361
    scWidth = 480
    scHeight = 360
    Draw( _keynav, posX, posY, scWidth, scHeight )
Return
sc1f::
    posX = 481
    posY = 361
    scWidth = 480
    scHeight = 360
    Draw( _keynav, posX, posY, scWidth, scHeight )
Return
sc20::
    posX = 961
    posY = 361
    scWidth = 480
    scHeight = 360
    Draw( _keynav, posX, posY, scWidth, scHeight )
Return
sc21::
    posX = 1441
    posY = 361
    scWidth = 480
    scHeight = 360
    Draw( _keynav, posX, posY, scWidth, scHeight )
Return

; zxcv
sc2c::
    posX = 0
    posY = 721
    scWidth = 480
    scHeight = 360
    Draw( _keynav, posX, posY, scWidth, scHeight )
Return
sc2d::
    posX = 481
    posY = 721
    scWidth = 480
    scHeight = 360
    Draw( _keynav, posX, posY, scWidth, scHeight )
Return
sc2e::
    posX = 961
    posY = 721
    scWidth = 480
    scHeight = 360
    Draw( _keynav, posX, posY, scWidth, scHeight )
Return
sc2f::
    posX = 1441
    posY = 721
    scWidth = 480
    scHeight = 360
    Draw( _keynav, posX, posY, scWidth, scHeight )
Return

;left up
sc16::
    scWidth /= 2
    Draw( _keynav, posX, posY, scWidth, scHeight )
    scHeight /= 2
    Draw( _keynav, posX, posY, scWidth, scHeight )
return
; ;left down
; sc24 & sc25::
;     scWidth /= 2
;     Draw( _keynav, posX, posY, scWidth, scHeight )
;     scHeight /= 2
;     posY += %scHeight%
;     Draw( _keynav, posX, posY, scWidth, scHeight )
; return
; ;down left
sc17::
    scHeight /= 2
    posY += %scHeight%
    Draw( _keynav, posX, posY, scWidth, scHeight )
    scWidth /= 2
    Draw( _keynav, posX, posY, scWidth, scHeight )
return
; ;down right
; sc25 & sc27::
;     scHeight /= 2
;     posY += %scHeight%
;     Draw( _keynav, posX, posY, scWidth, scHeight )
;     scWidth /= 2
;     posX += %scWidth%
;     Draw( _keynav, posX, posY, scWidth, scHeight )
; return
; ;up right
sc18::
    scHeight /= 2
    Draw( _keynav, posX, posY, scWidth, scHeight )
    scWidth /= 2
    posX += %scWidth%
    Draw( _keynav, posX, posY, scWidth, scHeight )
return
; ;up left
; sc26 & sc24::
;     scHeight /= 2
;     Draw( _keynav, posX, posY, scWidth, scHeight )
;     scWidth /= 2
;     Draw( _keynav, posX, posY, scWidth, scHeight )
; return
; ;right up
; sc27 & sc26::
;     scWidth /= 2
;     posX += %scWidth%
;     Draw( _keynav, posX, posY, scWidth, scHeight )
;     scHeight /= 2
;     Draw( _keynav, posX, posY, scWidth, scHeight )
; return
; ;right down
sc19::
    scWidth /= 2
    posX += %scWidth%
    Draw( _keynav, posX, posY, scWidth, scHeight )
    scHeight /= 2
    posY += %scHeight%
    Draw( _keynav, posX, posY, scWidth, scHeight )
return

return
$sc32::
    scWidth /= 2
    Draw( _keynav, posX, posY, scWidth, scHeight )
    scWidth /= 2
    Draw( _keynav, posX, posY, scWidth, scHeight )
return
$sc35::
    scWidth /= 2
    posX += %scWidth%
    Draw( _keynav, posX, posY, scWidth, scHeight )
    scWidth /= 2
    posX += %scWidth%
    Draw( _keynav, posX, posY, scWidth, scHeight )
return

; left
$sc24::
    scWidth /= 2
    Draw( _keynav, posX, posY, scWidth, scHeight )
Return

; down
$sc25::
    scHeight /= 2
    posY += %scHeight%
    Draw( _keynav, posX, posY, scWidth, scHeight )
Return

; up
$sc26::
    scHeight /= 2
    Draw( _keynav, posX, posY, scWidth, scHeight )
Return

; right
$sc27::
    scWidth /= 2
    posX += %scWidth%
    Draw( _keynav, posX, posY, scWidth, scHeight )
Return

sc3a & sc24::
    posX -= %scWidth%
    Draw( _keynav, posX, posY, scWidth, scHeight )
Return

sc3a & sc27::
    posX += %scWidth%
    Draw( _keynav, posX, posY, scWidth, scHeight )
Return
sc33::
    scHeight /= 2
    posY += %scHeight%
    Draw( _keynav, posX, posY, scWidth, scHeight )
    scHeight /= 2
    posY += %scHeight%
    Draw( _keynav, posX, posY, scWidth, scHeight )
Return
sc22::
    scHeight /= 2
    posY += %scHeight%
    Draw( _keynav, posX, posY, scWidth, scHeight )
    scHeight /= 2
    Draw( _keynav, posX, posY, scWidth, scHeight )
return

sc3a & sc25::
    posY += %scHeight%
    Draw( _keynav, posX, posY, scWidth, scHeight )
Return
sc34::
    scHeight /= 2
    Draw( _keynav, posX, posY, scWidth, scHeight )
    scHeight /= 2
    Draw( _keynav, posX, posY, scWidth, scHeight )
Return

sc3a & sc26::
    posY -= %scHeight%
    Draw( _keynav, posX, posY, scWidth, scHeight )
Return
t::
    scWidth := A_ScreenWidth
    scHeight := A_ScreenHeight / 32
    posX := 0
    posY := 0
    Draw( _keynav, posX, posY, scWidth, scHeight )
Return
v::
    scWidth := A_ScreenWidth
    scHeight := A_ScreenHeight / 16
    posX := 0
    posY := scHeight * 15
    Draw( _keynav, posX, posY, scWidth, scHeight )
Return
g::
    Warp( posX, posY, scWidth, scHeight )
Return
m::
    Gui,destroy
    Sleep,50
    MouseMove, 5, 5, 0
Return
`;::
Gui,destroy
Return
Esc::
    Gui,destroy
return
Space::
    Warp( posX, posY, scWidth, scHeight )
    MouseClick,Left
Return
+Space::
    Warp( posX, posY, scWidth, scHeight )
    MouseClick,Right
    goto here
    ;     Warp( posX, posY, scWidth, scHeight )
    ; MouseClick,Left,,,2
Return
1::
    MouseClick,Left
Return
+1::
    MouseClick,Left,,,2
Return
2::
    MouseClick,Middle
    Gui,destroy
Return
+2::
    MouseClick,Middle,,,2
    Gui,destroy
Return
3::
    MouseClick,Right
    Gui,destroy
Return
+3::
    MouseClick,Right,,,2
    Gui,destroy
Return
+a::
    Click Down
Return
a::
    Click Up
Return
#IfWinExist

+!sc18::

here:
    #IfWinExist,_keynav
        Gui, destroy
    #IfWinExist

    scWidth = %A_ScreenWidth%
    scHeight = %A_ScreenHeight%
    posX = 0
    posY = 0
    Gui +AlwaysOnTop -Caption +ToolWindow
    Gui, Color, EEEEEE, _keynav
    Gui, Show, X%A_ScreenWidth% Y%A_ScreenHeight% W%A_ScreenWidth% H%A_ScreenHeight% NoActivate, _keynav
    WinSet, Transparent, 0, _keynav
    WinSet, ExStyle, ^0x20, _keynav
    WinSet, TransColor, EEEEEE, _keynav
    Gui, Show, X0 Y0
    CrossHair( scWidth, scHeight )
Return

GuiClose:
ExitApp

Draw( _keynav, posX, posY, scWidth, scHeight )
{
    CoordMode, Mouse, Screen
    WinMove, _keynav, , %posX%, %posY%, %scWidth%, %scHeight%
    CrossHair( scWidth, scHeight )
}

Warp( posX, posY, scWidth, scHeight )
{
    CoordMode, Mouse, Screen
    toX := posX + scWidth/2
    toY := posY + scHeight/2
    MouseMove, toX, toY, 0
}
CrossHair( scWidth, scHeight )
{
    Gui, Add, Text, % "x0 y" . scHeight/2 . " w" . scWidth . " h1 0x10 +BackgroundTrans"
    Gui, Add, Text, % "x" . scWidth/2 . " y0 w1 h" . scHeight . " 0x11 +BackgroundTrans"
    Gui, Add, Text, % "hello" . scWidth/4 . "w" . scHeight/2

    Gui, Add, Text, % "x0 y0 w" . scWidth . " h1 0x10 +BackgroundTrans"
    Gui, Add, Text, % "x0 y0 w1 h" . scHeight . " 0x11 +BackgroundTrans"

    Gui, Add, Text, % "x0 y" . scHeight-1 . " w" . scWidth . " h1 0x10 +BackgroundTrans"
    Gui, Add, Text, % "x" . scWidth-1 . " y0 w1 h" . scHeight . " 0x11 +BackgroundTrans"
}