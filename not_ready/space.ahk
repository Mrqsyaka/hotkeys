#SingleInstance, Force
#InstallKeybdHook
i = 1
SendInput, {E0_B4}
SendInput, {E0_E4}
SendInput, {E0_B4}
SendInput, {E0_B5}
SendInput, {E0_B6}
SendInput, {E0_B7}
SendInput, {E0_B8}
SendInput, {E0_B9}
SendInput, {E0_BA}

; ;Space-Test
; Space::
; Send {Space down}
; Sleep, 0.01
; Send {Space up}
; return

; $Space::For_space()
; $sc24::SC24_N()

; For_space()
; {

;     timer := 0
;     while GetKeyState("Space", "P")
;     {
;         timer++
;         Sleep, 1
;     }
;     if timer < 100
;     {
;         send,{space}
;     }
;     else if timer > 100
;     {
;         Send above_100_%timer%_
;     }
;     timer := 0
;     return
; }

; SC24_N()
; {
;     timer := 0
;     while GetKeyState("n", "P")
;     {
;         timer++
;         Sleep, 1
;     }
;     if timer < 100
;     {
;         sendinput,{sc24}
;     }
;     else if timer > 100
;     {
;         Send above_100_%timer%_
;     }
;     timer := 0
;     return
; }


; sc5 & space::vkB3

; ; LEFT
; ; arrows
; Space & sc24::sendinput, #1
; Space & sc25::sendinput, #2
; Space & sc26::sendinput, #3
; Space & sc27::sendinput, #4
; Space & sc21::sendinput, #5
; Space & sc20::sendinput, #6
; Space & sc1f::sendinput, #7
; Space & sc1e::sendinput, #8

; sc35 & sc24::sc5
; sc3a & sc24::vk25
; sc24 & sc1e::sendinput, {CtrlDown}a{CtrlUp}

;     sc56 & sc24::sc5
;     sc56 & sc25::sc6
;     sc56 & sc26::sc7
;     sc56 & sc27::sc0b
;     sc56 & sc32::sc2
;     sc56 & sc33::sc3
;     sc56 & sc34::sc4
;     sc56 & sc16::sc8
;     sc56 & sc17::sc9
;     sc56 & sc18::sc0a
;     sc3a & sc00e::send,{backspace}
;     sc3a & sc25::sc150 ;down
;     sc3a & sc26::sc148 ;up
;     sc3a & sc27::sc14d ;right
;     sc3a & sc17::sc151 ;PgDn
;     sc3a & sc19::sc14f ;end
;     sc3a & sc16::sc147 ;home
;     sc3a & sc18::sc149 ;PgUp
;     sc3a & sc21::sc02a
;     sc3a & sc1e::Ctrl
;     sc3a & sc1f::Alt
;     sc3a & sc20::LWin
;     sc3a & sc1::return
;     sc3a & sc32::SendInput, {blind}^{Left} ;M
;     sc3a & sc33::sendinput, {blind}!{Left} ;,
;     sc3a & sc34::sendinput, {blind}!{Right} ;.
;     sc3a & sc35::sendinput, {blind}^{Right} ;/
;     sc3a & sc10::sendinput, {blind}^{Left}^+{Right} ;Q
;     sc3a & sc12::sendinput, {blind}^{BackSpace} ;E
;     sc3a & sc13::sendinput, {blind}{home}+{end}{delete} ;P
;     sc3a & sc11::sc153 ;Delete
;     sc3a & sc2d::sendinput, ^x
;     sc3a & sc2e::sendinput, ^c
;     sc3a & sc2f::sendinput, ^v
;     sc3a & sc30::sendinput, ^b
;     sc3a & sc15::sendinput, {up 5}
;     sc3a & sc31::sendinput, {down 5}
;     sc3a & sc23::sendinput, {right 5}
;     sc3a & sc22::sendinput, {left 5}
;     sc3a & sc28::vk5d
;     sc3a & sc00a::+sc00a
;     sc3a & sc00b::+sc00b
;     sc35 & sc16::sc8 ;u
;     sc35 & sc17::sc9 ;i
;     sc35 & sc18::sc0a ;o
;     sc35 & sc25::sc6 ;k
;     sc35 & sc26::sc7 ;l
;     sc35 & sc32::1 ;m
;     sc35 & sc33::sc3 ;,
;     sc35 & sc34::sc4 ;.
;     sc35 & sc15b::vkbc ;win
;     sc35 & sc1d::sendinput, .
;     sc35 & sc38::sc0e
;     sc35 & sc23::sc153
;     sc35 & sc6::sendinput, {enter}
;     sc35 & sc5::sendinput, {enter}
;     sc35 & sc4::sendinput, {enter}
;     sc35 & sc3::sendinput, {enter}
;     sc35 & sc2::sendinput, {enter}
;     sc35 & sc31::sc0b
;     !sc35::SendInput, /
;     sc35 & sc10::sendinput, ? ;q(7)
;     sc35 & sc11::sendinput, * ;w(8)
;     sc35 & sc12::sendinput, ( ;e(9)
;     sc35 & sc13::+sc00d ;r()
;     sc35 & sc1e::sendinput, +4 ;a(4)
;     sc35 & sc1f::sendinput, +5 ;r(5)
;     sc35 & sc20::sendinput, : ;d(6)
;         sc35 & sc21::sendinput, - ;f(-)
;         sc35 & sc2c::sendinput, +1 ;z(1)
;         sc35 & sc2d::sendinput, +2 ;x(2)
;         sc35 & sc2e::sendinput, +3 ;c(=)
;         sc35 & sc2f::sc00d ;v()
;         sc35 & sc3a::+vkbd
