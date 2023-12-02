#NoEnv
#KeyHistory
#NoTrayIcon
#SingleInstance, force
; #NoEnv
; #InstallKeybdHook
; #InstallMouseHook
global D_folder, NULP, VSCode_path, Telegram, Compiler, Folder, To_git_hub, Vocab_ahk, Shortcuts_ahk, Vocab_exe, Shortcuts_exe, German_py, German_txt, Pass, result, add_task
Location_Of_Ini := "E:\Shortcuts\main\shortcuts.ini"
IniRead, D_folder, %Location_Of_Ini%, section2, D_folder
IniRead, NULP, %Location_Of_Ini%, section2, NULP
IniRead, VSCode_path, %Location_Of_Ini%, section2, VSCode_path
IniRead, Telegram, %Location_Of_Ini%, section2, Telegram
IniRead, Compiler, %Location_Of_Ini%, section2, Compiler
IniRead, Folder, %Location_Of_Ini%, section2, Folder
IniRead, To_git_hub, %Location_Of_Ini%, section2, To_git_hub
IniRead, add_task, %Location_Of_Ini%, section2, add_task
IniRead, Vocab_ahk, %Location_Of_Ini%, section2, Vocab_ahk
IniRead, Shortcuts_ahk, %Location_Of_Ini%, section2, Shortcuts_ahk
IniRead, Vocab_exe, %Location_Of_Ini%, section2, Vocab_exe
IniRead, Shortcuts_exe, %Location_Of_Ini%, section2, Shortcuts_exe
IniRead, German_py, %Location_Of_Ini%, section2, German_py
IniRead, Pass, %Location_Of_Ini%, section2, Pass
IniRead, result, %Location_Of_Ini%, section2, result

;=========================================================================================================================================================
;Colemak to qwerty Shortcuts
;=========================================================================================================================================================
{

    ^vk55::^i
    !vk55::!i
    #vk55::#i

    ;r
    ^sc013::^vk52
    !sc013::!vk52
    #sc013::#vk52
    ;e
    ^sc012::^vk45
    !sc012::!vk45
    #sc012::#vk45
    ;j
    ^sc024::^vk4A
    !sc024::!vk4A
    #sc024::#vk4A
    ;s
    ^sc01F::^vk53
    !sc01F::!vk53
    #sc01F::#vk53
    ;f
    ^sc021::^vk46
    !sc021::!vk46
    #sc021::#vk46
    ;t
    ^sc014::^vk54
    !sc014::!vk54
    #sc014::#vk54
    ;y
    ^sc015::^vk59
    !sc015::!vk59
    #sc015::#vk59
    ;u
    ^sc016::^vk55
    !sc016::!vk55
    #sc016::#vk55
    ;o
    ^sc018::^vk4F
    !sc018::!vk4F
    #sc018::#vk4F
    ;p
    ^sc019::^vk50
    !sc019::!vk50
    #sc019::#vk50
    #sc19::#vk50
    ;d
    ^sc020::^vk44
    !sc020::!vk44
    #sc020::#vk44
    ;g
    ^sc022::^vk47
    !sc022::!vk47
    #sc022::#vk47
    ;h
    ^sc023::^vk48
    !sc023::!vk48
    #sc023::#vk48
    ;k
    ^sc025::^vk4B
    !sc025::!vk4B
    #sc025::#vk4B
    ;l
    ^sc026::^vk4C
    !sc026::!vk4C
    #sc026::#vk4C
    ;n
    ^sc031::^vk4E
    !sc031::!vk4E
    #sc031::#vk4E
}

;=========================================================================================================================================================
;Alternative control
;=========================================================================================================================================================
{
    #sc2f::send,^!{f10}
    #sc32::WinMinimize, A
    ^f14::send,^{enter}
    !+f14::send,!+{enter}
    !^f14::send,!+{enter}
    ^+f14::send,^+{enter}
    +f14::send,+{enter}
    f14::
        send, {Shift Down}
        KeyWait, f14
        KeyWait, f14
        KeyWait, f14
        send, {ShiftUp}
        If (A_PriorKey = "f14")
        {
            KeyWait, f14
            sendinput, {enter}
        }
    return
    ; #sc31::add_task()
    Insert::
    ToolTip, hello
    shift_state :=  GetKeyState("LShift")
    control_state :=  GetKeyState("LCtrl")
    alt_state :=  GetKeyState("LAlt")
    windows_state :=   GetKeyState("LWin")
    Rshift_state :=  GetKeyState("RShift")
    Rcontrol_state :=  GetKeyState("RCtrl")
    Ralt_state :=  GetKeyState("RAlt")
    Rwindows_state :=   GetKeyState("RWin")
    ToolTip, shift - %shift_state% `nctrl - %control_state%`nalt - %alt_state%`nwindows - %windows_state%`nRshift - %Rshift_state% `nRctrl - %Rcontrol_state%`nRalt - %Ralt_state%`nRwindows - %Rwindows_state%
    sleep 2000
    tooltip
    return
    #sc31::SendInput % GetRandomElement(["Kannst du überprüfen, ob ich alle Namen der Themen richtig geschrieben habe?", "Verbposition in einfachen Sätzen", "Verbposition in Satzverbindungen", "Position von Dativ- und Akkusativobjekt", "Position der Angaben im Satz", "Informationen direkt zum Verb", "Position von nicht", "Position von auch und Fokuspartikeln", "Informationsverteilung im Satz", "Konjunktiv 2 der Gegenwart: Formen", "Konjunktiv 2 der Vergangenheit: Formen", "Höflichkeit, Vorschläge, Ratschläge und Vorwürfe", "Wünsche, irreale Wünsche und irreale Bedingungen", "Irreale Vergleiche und irreale Folgen", "Passiv in allen Zeiten", "Passiv mit Modalverben in allen Zeiten", "Alternativen zum Passiv", "Formen mit Passivbedeutung", "Passivsätze ohne Subjekt", "Wann ist Passiv möglich, wann nicht?", "Wechselpräpositionen", "Oft gebrauchte lokale Präpositionen", "Weitere lokale Präpositionen", "Die wichtigsten temporalen Präpositionen", "Weitere temporale Präpositionen", "Kausale Präpositionen", "Präpositionen der Redewiedergabe und Referenz", "räpositionen mit verschiedenen Positionen", "Sprechende Präpositionen", "Bedeutungen von an, auf, über, unter, vor", "Bedeutungen von bei, von, nach, aus, mit, zu", "Verben mit Nominativ, Akkusativ und Dativ", "Verben mit Genitiv", "Verben, Nomen und Adjektive mit", "Präpositionen", "Verben, Adjektive und Nomen mit festen", "Präpositionen mit Akkusativ", "Verben, Adjektive und Nomen mit festen", "Präpositionen mit Dativ", "Bildung der Vergangenheitszeiten", "Besondere Perfektformen: Modalverben und", "sehen, hören, lassen", "Gebrauch von Zeiten der Vergangenheit", "Vermutung und Zukunft mit dem Futur", "Überblick über die Zeiten im Deutschen", "Modalverben in der Grundbedeutung", "Andere Bedeutung von Modalverben: Vermutungen über die Gegenwart", "Andere Bedeutung von Modalverben: Vermutungen über die Vergangenheit", "Das Verb lassen", "Trennbare und untrennbare Verben 1", "Trennbare und untrennbare Verben 2", "Genitiv", "n-Deklination", "Drei Deklinationen", "Deklination der Indefinit- und", "Possessivpronomen", "Indefinitpronomen für Menschen und Dinge", "Adjektivdeklination", "Artikelwörter und Adjektivdeklination", "Komparation", "Partizip I und 11 als Adjektiv", "Indirekte Rede und Konjunktiv 1", "Indirekte Rede — Vergangenheit", "Wiedergabe von Aufforderungen,", "Gerüchten und Selbstaussagen", "Temporale Nebensätze", "Kausale und konzessive Nebensätze", "Konsekutive Nebensätze", "Konditionale und adversative Nebensätze", "Modale Nebensätze (Methode)", "Infinitiv mit und ohne zu", "Nebensatz mit dass und Infinitiv mit zu", "Finale und modale Infinitiv- und Nebensätze", "Relativpronomen im Nominativ, Akkusativ", "und Dativ", "Relativpronomen im Genitiv", "Relativpronomen mit w- und als", "Doppelkonnektoren", "Negationswörter", "Irgend.", "Position und Direktion", "Funktionsverbgefüge I", "Funktionsverbgefüge II", "Wörter mit da-", "Modalpartikeln", "Nominalisierung", "Links- und Rechtsattribute", "Präposition-Adverb-Konnektor 1", "Präposition-Adverb-Konnektor 2", "Präposition-Adverb-Konnektor 3", "Kommaregeln", "Besondere Formen der mündlichen Sprache"])
    +!sc56::create()
    +!^sc56::remove_file()()
    sc3a & LButton::SendInput, {sc1c}
    sc3a & RButton::SendInput, {delete}
    sc3a & MButton::SendInput, {backspace}
    ; $sc39::For_space()
    ; sc39 & sc24::sendinput, #1
    ; sc39 & sc25::sendinput, #2
    ; sc39 & sc26::sendinput, #3
    ; sc39 & sc27::sendinput, #4
    ; sc39 & sc21::sendinput, #5
    ; sc39 & sc20::sendinput, #6
    ; sc39 & sc1f::sendinput, #7
    ; sc39 & sc1e::sendinput, #8
    ; sc39 & sc10::sendinput, {sc39}{sc10}
    ; sc39 & sc11::sendinput, {sc39}{sc11}
    ; sc39 & sc12::sendinput, {sc39}{sc12}
    ; sc39 & sc13::sendinput, {sc39}{sc13}
    ; sc39 & sc14::sendinput, {sc39}{sc14}
    ; sc39 & sc15::sendinput, {sc39}{sc15}
    ; sc39 & sc16::sendinput, {sc39}{sc16}
    ; sc39 & sc17::sendinput, {sc39}{sc17}
    ; sc39 & sc18::sendinput, {sc39}{sc18}
    ; sc39 & sc19::sendinput, {sc39}{sc19}
    ; sc39 & sc1a::sendinput, {sc39}{sc1a}
    ; sc39 & sc1b::sendinput, {sc39}{sc1b}
    ; sc39 & sc2c::sendinput, {sc39}{sc2c}
    ; sc39 & sc2d::sendinput, {sc39}{sc2d}
    ; sc39 & sc2e::sendinput, {sc39}{sc2e}
    ; sc39 & sc2f::sendinput, {sc39}{sc2f}
    ; sc39 & sc30::sendinput, {sc39}{sc30}
    ; sc39 & sc31::sendinput, {sc39}{sc31}
    ; sc39 & sc32::sendinput, {sc39}{sc32}
    ; sc39 & sc33::sendinput, {sc39}{sc33}
    ; sc39 & sc34::sendinput, {sc39}{sc34}
    ; sc39 & sc35::sendinput, {sc39}{sc35}
    SetDefaultKeyboardLang(LocaleID){
        Static SPI_SETDEFAULTINPUTLANG := 0x005A, SPIF_SENDWININICHANGE := 2
        Lan := DllCall("LoadKeyboardLayout", "Str", Format("{:08x}", LocaleID), "Int", 0)
        VarSetCapacity(binaryLocaleID, 4, 0)
        NumPut(LocaleID, binaryLocaleID)
        DllCall("SystemParametersInfo", "UInt", SPI_SETDEFAULTINPUTLANG, "UInt", 0, "UPtr", &binaryLocaleID, "UInt", SPIF_SENDWININICHANGE)
        WinGet, windows, List
        Loop % windows {
            PostMessage 0x50, 0, % Lan, , % "ahk_id " windows%A_Index%
        }
    }

    Colemak()
    {
        PostMessage, 0x50,,-0xF3CFBF7,, A ; colemak
    }
    PM()
    {
        PostMessage, 0x50,,-0xF3EFBDE,, A ; українська мова
    }

    ~#sc3::PM()
    ~#3::Colemak()
    ~#sc2::Colemak()
    ~#sc5::Colemak()
    !sc23::sendinput, {delete}
    #sc27::#vk4b ; semicolon
    ~esc::sendinput, {CtrlUp}{AltUp}{ShiftUp}{LWinUp}{RWinUp}
    sc3a::sc3afunction()
    sc56 & sc24::sc5
    sc56 & sc25::sc6
    sc56 & sc26::sc7
    sc56 & sc27::sc0b
    sc56 & sc32::sc2
    sc56 & sc33::sc3
    sc56 & sc34::sc4
    sc56 & sc16::sc8
    sc56 & sc17::sc9
    sc56 & sc18::sc0a
    sc56::sc56function()
    sc3a & sc14::sendinput, {CtrlDown}t{CtrlUp}
    sc3a & sc00e::sendinput,{backspace}
    sc3a & sc24::sc14b ;left
    sc3a & sc25::sc150 ;down
    sc3a & sc26::sc148 ;up
    sc3a & sc27::sc14d ;right
    sc3a & sc17::sc151 ;PgDn
    sc3a & sc19::sc14f ;end
    sc3a & sc16::sc147 ;home
    sc3a & sc18::sc149 ;PgUp
    sc3a & sc21::sc02a
    sc3a & sc2::send, {ShiftDown}{enter}{ShiftUp}
    sc3a & sc3::send, {ShiftDown}{enter}{ShiftUp}
    sc3a & sc4::send, {ShiftDown}{enter}{ShiftUp}
    sc3a & sc1e::Ctrl
    sc3a & sc1f::Alt
    sc3a & sc20::LWin
    sc3a & sc1::return
    sc3a & sc32::SendInput, {blind}{CtrlDown}{Left}{CtrlUp} ;M
    sc3a & sc33::sendInput, {blind}{AltDown}{Left}{AltUp} ;,
    sc3a & sc34::sendinput, {blind}{AltDown}{Right}{AltUp} ;.
    sc3a & sc35::sendinput, {blind}{CtrlDown}{Right}{CtrlUp} ;/
    sc3a & sc10::sendinput, {blind}{CtrlDown}{Left}{CtrlUp}{CtrlDown}{ShiftDown}{Right}{CtrlUp}{ShiftUp} ;Q
    sc3a & sc12::sendinput, {blind}{CtrlDown}{BackSpace}{CtrlUp} ;E
    sc3a & sc13::sendinput, {blind}{home}{ShiftDown}{end}{ShiftUp}{delete} ;P
    sc3a & sc11::sc153 ;Delete
    sc3a & sc2d::sendinput, {CtrlDown}x{CtrlUp}
    sc3a & sc2e::sendinput, {ctrldown}c{CtrlUp}
    sc3a & sc2f::sendinput, {CtrlDown}v{CtrlUp}
    sc3a & sc30::sendinput, {CtrlDown}b{CtrlUp}
    sc3a & sc15::sendinput, {up 5}
    sc3a & sc31::sendinput, {down 5}
    sc3a & sc23::sendinput, {right 5}
    sc3a & sc22::sendinput, {left 5}
    sc3a & sc28::vk5d
    sc3a & sc00a::send, {ShiftDown}{sc00a}{ShiftUp}
    sc3a & sc00b::send, {ShiftDown}{sc00b}{ShiftUp}
    sc3a & sc8::send, {ShiftDown}{sc8}{ShiftUp}
    sc3a & sc7::send, {ShiftDown}{sc7}{ShiftUp}
    sc3a & sc9::send, {ShiftDown}{sc9}{ShiftUp}
    sc35 & sc8::send, {ShiftDown}{sc8}{ShiftUp}
    sc35 & sc7::send, {ShiftDown}{sc7}{ShiftUp}
    sc35 & sc30::sendinput, .
    sc35 & sc9::send, {ShiftDown}{sc9}{ShiftUp}
    sc35 & sc22::sendinput, {U+005E} ; g
    sc35 & sc14::sendinput, {U+005C} ; t
    ; sc35 & sc30:: ; b
    sc35 & sc16::sc8 ;u
    sc35 & sc17::sc9 ;i
    sc35 & sc18::sc0a ;o
    sc35 & sc24::sc5 ;j
    sc35 & sc25::sc6 ;k
    sc35 & sc26::sc7 ;l
    sc35 & sc32::1 ;m
    sc35 & sc33::sc3 ;,
    sc35 & sc34::sc4 ;.
    sc35 & sc15b::vkbc ;win
    sc35 & sc1d::sendinput, .
    sc35 & sc38::sc0e
    sc35 & sc23::sc153
    sc35 & sc6::sendinput, {enter}
    sc35 & sc5::sendinput, {enter}
    sc35 & sc4::sendinput, {enter}
    sc35 & sc3::sendinput, {enter}
    sc35 & sc2::sendinput, {enter}
    sc35 & sc31::sc0b
    sc35::sc35function()
    !sc35::SendInput, /
    +sc35::sc35function_shift()
    sc35 & sc10::sendinput, ? ;q(7)
    sc35 & sc11::sendinput, * ;w(8)
    sc35 & sc12::sendinput, ( ;e(9)
    sc35 & sc13::+sc00d ;r()
    sc35 & sc1e::sendinput, {ShiftDown}4{ShiftUp} ;a(4)
    sc35 & sc1f::sendinput, {ShiftDown}5{ShiftUp} ;r(5)
    sc35 & sc20::sendinput, : ;d(6)
    sc35 & sc21::sendinput, - ;f(-)
    sc35 & sc2c::sendinput, {ShiftDown}1{ShiftUp} ;z(1)
    sc35 & sc2d::sendinput, {ShiftDown}2{ShiftUp} ;x(2)
    sc35 & sc2e::sendinput, {ShiftDown}3{ShiftUp} ;c(=)
    sc35 & sc2f::sc00d ;v()
    sc35 & sc3a::send, {ShiftDown}{vkbd}{ShiftUp}
    +!sc25::Ctrl_alt_down()
    +!sc26::Ctrl_alt_up()

    ;=========================================================================================================================================================
    ;Activatiing functions
    ;=========================================================================================================================================================
    !sc0f::vk09 ;tab
    ^sc0f::vk09 ;tab
    #sc0f::vk09 ;tab
    sc0f::vk09 ;tab
    sc0f & sc24::umlaut("Ä","ä")
    sc0f & sc25::umlaut("ß","ß")
    sc0f & sc17::umlaut("Ü","ü")
    sc0f & sc27::umlaut("Ö","ö")
    sc0f & sc1f::umlaut("Ы","ы")
    !f14:: ; tab + L
    sendinput,^{left}+{right}
    CamelCase()
    sendinput,^{right}
    Return

    #sc3a::capslockstatee()
    ; #sc23::newreplacement()

    #sc1e:: Open_with_vs_code()

    ; #sc39::sendinput, #{Space}
    ; ^sc39::sendinput, ^{Space}
    ; +sc39::sendinput, +{Space}
    <^>!::RCtrl
    sc5 & sc25::
    f3::
    #WheelDown::
    ^!Down::
        volumedown()
    Return
    sc5 & sc26::
    $f4::
    #WheelUp::
    ^!Up::
        volumeup()
    Return

    #sc11::sendinput, {LWinDown}{ShiftDown}s{ShiftUp}{LWinUp}

    XButton2::sendinput, #+s
    XButton1 & RButton::sc153
    XButton1 & LButton::sc1c
    XButton1::sendinput, !{Left}

    #if winactive("ahk_exe chrome.exe")
        ^!sc24::sendinput, {CtrlDown}{ShiftDown}{tab}{CtrlUp}{ShiftUp}
        ; send, {CtrlDown}{ShiftDown}{8}{CtrlUp}{ShiftUp}
        ; Colemak()
        ; return
        ^!sc25::sendinput, ^w
        ^!sc26::sendinput, ^+t
        ^!sc27::sendinput, ^{tab}
        ^!sc19::sendinput, ^9
        ^!sc16::sendinput, ^1
        ^!sc33::
        wingettitle, title
        if InStr(title, "Bing-KI")
        {
        CoordMode, Mouse, Screen
        MouseGetPos, OriginalMouseX, OriginalMouseY
        MouseClick, Left, 261, 969, 1, 0
        MouseMove, %OriginalMouseX%, %OriginalMouseY%, 0
        }
        else
        {
            send, !{left}
        }
        return
        ^!sc34::
        wingettitle, title
        if InStr(title, "Bing-KI")
        {
        CoordMode, Mouse, Screen
        MouseGetPos, OriginalMouseX, OriginalMouseY
        MouseClick, left, 810, 978, 1, 0
        MouseMove, %OriginalMouseX%, %OriginalMouseY%, 0
        }
        else
        {
            send, !{right}
        }
        return
    #if
    #if winactive("ahk_exe telegram.exe")
        ~sc39::
        if (A_ThisHotkey == A_PriorHotkey && A_TimeSincePriorHotkey <= 200)
        {
            send,{BackSpace 2}
            sendraw, ,
            send,{Space}
        }
        return
        ^!sc24::
        ; select account 1
        CoordMode, Mouse, Screen
        MouseGetPos, OriginalMouseX, OriginalMouseY
        Click 35, 64
        sleep 150
        Click 80, 228
        MouseMove, %OriginalMouseX%, %OriginalMouseY%
        return
        ^!sc25::
        ; select account 2
        CoordMode, Mouse, Screen
        MouseGetPos, OriginalMouseX, OriginalMouseY
        Click 35, 64
        sleep 150
        Click 80, 280
        MouseMove, %OriginalMouseX%, %OriginalMouseY%
        Return
        ^!sc26::
        ; play the last voice message
        MouseGetPos, OriginalMouseX, OriginalMouseY
        ImageSearch, OutputVarX, OutputVarY, 430, 160, 1504, 994, C:\Users\Mrqsyaka\Desktop\kb.png
        if OutputVarX{
            MouseClick, left, OutputVarX, OutputVarY, 1, 0
        }
        MouseMove, %OriginalMouseX%, %OriginalMouseY%
        Return
    #if

    !sc1e::sendingv3("U+0022","U+0022") ; ""
    !sc1f::sendingv3("U+007B","U+007D") ; {}
    !sc20::sendingv3("U+005B","U+005D") ; []
    !sc21::sendingv3("U+0028","U+0029") ; ()
    !sc12::sendingv3("U+003C","U+003E") ; <>
    !sc11::sendingv3("U+0027","U+0027") ; ''
    !sc10::sendingv3("U+002C","U+002C") ; ,,
    !sc2f::sendingv3("U+0025","U+0025") ; %%

    #sc2e::sendf4()
    #sc21::folderF()
    #sc10::sendTelegram()
    ; ^sc1f::sssave()
    #sc30::search()
    #sc2c::hideIcons()
    #sc1::HideShowTaskbar()
    #^sc14::restartandcompile()
    ~!sc39::alt_space()

    !#^Down::shut()
    !#^Up::restart()
    !#^Left::sleeep()

    sc5 & sc39::
    f6::
        Send, ^#+{F24}
    return

    f7::
    sc5 & sc24::
        sendinput, {Media_Prev}
    return

    f8::
    sc5 & sc27::
        sendinput, {Media_Next}
    return

    !#sc1f::OpentWithPotPlayer()

    !sc29::sendmybro1()
    ^!sc29::sendmybro2()
    MButton::Middle()
    !sc1::bash_bash_bash()
    #sc25:: University_Folder()
    #!+sc19::EnableDisable_always_on_top()

 ;somethign wrong with shift and alt
    ; German
    sc3 & sc23::Find_Etymology_Of_German_Word()
    sc3 & sc24::German_Translate()
    sc3 & sc25::German_Translate_One_Word()
    sc3 & sc26::Append_To_Deutsch()
    sc3 & sc27::Open_German_Txt()

 ;somethign wrong with shift and alt
    ;English
    sc2 & sc24::General_Translate()
    sc2 & sc25::Send_to_Longman_or_back()
    sc2 & sc26::Append_To_English()
    sc2 & sc27::Run_English()

    ;Some things
    sc4 & sc24::umlaut("Ä","ä")
    sc4 & sc25::umlaut("ß","ß")
    sc4 & sc17::umlaut("Ü","ü")
    sc4 & sc27::umlaut("Ö","ö")

    ;And some more things
    sc6 & sc24::sendinput, {PrintScreen}
    sc6 & sc25::sendinput, !{PrintScreen}
    sc6 & sc26::sendinput, ^{PrintScreen}
    sc6 & sc27::sendinput, !^{PrintScreen}

    sc2::1
    sc3::2
    sc4::3
    sc5::4
    sc6::5
    sc7::6
    sc8::7
    sc9::8
    sc0a::9
    sc0b::0

    +^!sc2e::capslockstatee()

    #sc24::SendInput, {U+0029} ; win + j to send (
    !#sc24::SendInput, {U+0028} ; win + shift + j to send

    ; sc4 & enter::Password()
    ;=========================================================================================================================================================
    ; Functions
    ;=========================================================================================================================================================

    GetRandomElement(list) {
        Random, index, 1, % list.MaxIndex()
    return list[index]
}

umlaut(a,b)
{
    If (GetKeyState("Alt", "P")){
        sendinput, %a%
    return
}
Else{
    sendinput, %b%
    return
}
}

sc35function()
{
    SetFormat, Integer, H
    WinGet, WinID,, A
    ThreadID:=DllCall("GetWindowThreadProcessId", "UInt", WinID, "UInt", 0)
    InputLocaleID:=DllCall("GetKeyboardLayout", "UInt", ThreadID, "UInt")
    if (InputLocaleID=0xF0C30409)
    {
        SendInput, /
    }
    else
    {
        sendinput, .
    }
    DllCall("Load",[ Type1, Arg1, Type2, Arg2, "Cdecl ReturnType"])
}

sc35function_shift()
{
    SetFormat, Integer, H
    WinGet, WinID,, A
    ThreadID:=DllCall("GetWindowThreadProcessId", "UInt", WinID, "UInt", 0)
    InputLocaleID:=DllCall("GetKeyboardLayout", "UInt", ThreadID, "UInt")
    if (InputLocaleID=0xF0C00409)
    {
        SendInput, ?
    }
    else
    {
        sendinput, ,
    }
}
sc3afunction()
{

    if winactive("ahk_exe EXCEL.EXE") | winactive("ahk_exe Mathematica.exe") | winactive("ahk_exe Code.exe") | winactive("ahk_class CabinetWClass") | winactive("ahk_exe Acrobat.exe") | winactive("ahk_exe ahk_exe cmd.exe") | winactive("ahk_exe shortcuts.exe")
    {
        sendinput, {BackSpace}
    Return
}
else
{
    sendinput, ^{BackSpace} ;backspace
    return
}
}
sc56function()
{

    if winactive("ahk_exe Code.exe")
    {
        sendinput, {U+005F}
    }
    else winactive("ahk_exe Mathematica.exe") || winactive("ahk_exe brave.exe")
    {
        sendinput, {U+005E}
    }
}

; ctrl + alt + вверх
Ctrl_alt_up()
{
    send, ^!{up}
    Check_alt()
    Check_ctrl()
}

;ctrl + alt + вниз
Ctrl_alt_down()
{
    send, ^!{down}
    Check_alt()
    Check_ctrl()
}

;Попередній робочий стіл
; Go_To_Previous_Desktop()
; {
;     SendInput, ^#{left}
; }

;Наступний робочій стіл
; Go_To_Next_Desktop()
; {
;     SendInput, ^#{Right}
; }

;Додати гучності
volumeup()
{
    if !winactive("ahk_exe EXCEL.EXE")
    {
        sendinput, {Volume_Up}
    }
    else
    {
        SendInput, {f4}
    }
}

;Зменшити гучність
volumedown()
{
    if !winactive("ahk_exe EXCEL.EXE")
        sendinput, {Volume_Down}
}
;=================================================

;Win + C:: Alt + f4
sendf4()
{
    sendinput, !{f4}
    Check_alt()
}
;=================================================

;Single ctrl + s act as triple ctrl + s
sssave()
{
    ; sendinput, ^s^s^s
    ; sleep 500
    ; Check_ctrl()
}
;=================================================

;write in snake_case
Flashback_Counter()
{
    Current_Clipboard := clipboard
    send, ^x
    sleep 50
    a := RegExReplace(clipboard, "(?<=\s|^)([a-zа-яюабвгґдеєжзиіїйклмнопрстуфхцчшщюяьєіїйüäöß])", "$1")
    b := RegExReplace(a, "\s", "_")
    clipboard := b
    sleep 50
    send, ^v
    Check_ctrl()
    sleep 50
    clipboard := Current_Clipboard
}

CamelCase()
{
    Current_Clipboard := clipboard
    send, ^x
    sleep 50
    a := RegExReplace(clipboard, "(?<=\s|^)([a-zа-яюабвгґдеєжзиіїйклмнопрстуфхцчшщюяьєїійüäöß])", "$U1")
    b := RegExReplace(a, "\s", "")
    clipboard := b
    sleep 50
    send, ^v
    Check_ctrl()
    sleep 50
    clipboard := Current_Clipboard
}
;Win + F:: папка F
folderF()
{
    Colemak()
    run, %D_folder%

}
;=================================================

;Win + B:: пошук в Cent Browser
search()
{
    temp := Clipboard
    Clipboard =
    SendInput, ^c
    sleep 100
    ClipWait, 2
    if ErrorLevel
    {
    return
}
a = {U+1F643}
Run, http://www.google.com/search?q=`%22%clipboard% `%22+-и
Return
}

;send selected file to telegram
sendTelegram()
{
    {
        vvvv := % clipboard
        clipboard =
        SendInput, {Control Down}c{Control Up}
        ClipWait, 0
        var1 := RegExReplace(Clipboard, "m)^.+\\", "")
        Sort, Clipboard
    }
    {
        ControlGetText, path, ToolbarWindow323, A
        pos := InStr(path, ": ")
        path := SubStr(path, pos+2)
        var2 := path
    }
    vv=%clipboard%
    run, %Telegram% -sendpath "%vv%"
    clipboard := % vvvv
    return

}

sendingv3(unicode_of_the_symbol, unicode_of_the_symbol2){
    if !WinActive("ahk_class XLMAIN") and !WinActive("ahk_class HH Parent") and !WinActive("ahk_exe Zoom.exe") and !WinActive("Save As"){
        SendInput, {%unicode_of_the_symbol%}{%unicode_of_the_symbol2%}{left}
    }
    Check_alt()
    return
}

;Change capslock state
capslockstatee()
{
    if GetKeyState("CapsLock", "T") = 1
    {
        SetCapsLockState, Off
    }
    else
        SetCapsLockState, On

}

;Win + Z:: сховати іконки
hideIcons()
{
    ControlGet, a, Visible,, SysListView321, ahk_class WorkerW
    if (a!=1)
    {
        Control, Show,, SysListView321, ahk_class WorkerW
    }
    ;     else
    ; {
    ;     Control, Hide,, SysListView321, ahk_class WorkerW
    ;     return
    ; }
}
;Win + Esc:: заховати taskbar

HideShowTaskbar()
{
    {
        static SW_HIDE := 0, SW_SHOWNA := 8, SPI_SETWORKAREA := 0x2F
        DetectHiddenWindows, On
        hTB := WinExist("ahk_class Shell_TrayWnd")
        WinGetPos,,,, H
        hBT := WinExist("ahk_class Button ahk_exe Explorer.EXE")
        b := DllCall("IsWindowVisible", "Ptr", hTB)
        for k, v in [hTB, hBT]
            ( v && DllCall("ShowWindow", "Ptr", v, "Int", b ? SW_HIDE : SW_SHOWNA) )
        VarSetCapacity(RECT, 16, 0)
        NumPut(A_ScreenWidth, RECT, 8)
        NumPut(A_ScreenHeight - !b*(H), RECT, 12, "UInt")
        DllCall("SystemParametersInfo", "UInt", SPI_SETWORKAREA, "UInt", 0, "Ptr", &RECT, "UInt", 0)
        WinGet, List, List
        Loop % List {
            WinGet, res, MinMax, % "ahk_id" . List%A_Index%
            if (res = 1)
                WinMove, % "ahk_id" . List%A_Index%,, 0, 0, A_ScreenWidth, A_ScreenHeight - 	!b*(H)
            ; WinMove, % "ahk_id" . List%A_Index%,, 0, 0, A_ScreenWidth, A_ScreenHeight
        }
    }
}

}

restartandcompile()
{
    run, %To_git_hub% "%Compiler%" %Shortcuts_ahk% %Vocab_ahk% %Shortcuts_exe% %Vocab_exe%
}

add_task()
{
    x = 13
    y = 7.5
    inputbox, newreplacement,Enter a new task,Enter new task::,,x*20,y*20
    if (newreplacement != "")
    {
        run, %add_task% "%newreplacement%",,hide
        if ErrorLevel
        {
            return
        }
    }
    return
}

alt_space()
{
    WinWait, PowerToys.PowerLauncher
    Colemak()
    sleep 200
    Check_alt()
}

;Win + Ctrl + Alt + стрілка вниз:: вимкунти комп'ютер
shut()
{
    Shutdown, 1
}

;Win + Ctrl + Alt + стрілка вверх:: перезапустити комп'ютер
restart()
{
    Shutdown, 2
}

;Win + Ctrl + Alt + стрілка вліво:: сон
sleeep()
{
    DllCall("PowrProf\SetSuspendState", "Int", 0, "Int", 1, "Int", 0)
}

;Alt + `:: Надіслати мій улюблений смайл
sendmybro1()
{
    sendinput, {U+1F643}
    Check_alt()
}

;Ctrl + Alt + `:: Надіслати НЛО
sendmybro2()
{
    sendinput, {U+1F47D}{U+1F47D}
    Check_alt()
}

;Win + S::  Зберегти буфер у файл "English"
Append_To_English()
{
    clipboard_before = %clipboard%
    clipboard =
    SendInput, ^c
    sleep 100
    ClipWait, 2
    if ErrorLevel{
    return
}
if winactive("ahk_exe brave.exe"){
    sendinput, !+h ; translation
}
PM()
inputbox, newreplacement, Neues Wort, Geben Sie die Ubersetzung des Wortes, , , ,0,0
if (!newreplacement)
{
    return
}
FileAppend, % "`n" clipboard, F:\Shortcuts\FG\Shortcuts\English.txt, UTF-8
run, python -u "e:\Programming\Sheets_API\English.py" "%clipboard%" "%newreplacement%", , hide
clipboard = %clipboard%
Colemak()
Check_ctrl()
Check_shift()
}

Run_English()
{
    run, F:\Shortcuts\FG\Shortcuts\English.txt
    WinWaitActive, ahk_exe Notepad.exe
    sleep 100
    sendinput, ^{end}
}
Append_To_Deutsch()
{
    clipboard_before = %clipboard%
    clipboard =
    SendInput, ^c
    sleep 100
    ClipWait, 2
    if ErrorLevel
    {
    return
}
if winactive("ahk_exe chrome.exe"){
    sendinput, !+h ; translation
    Haystack := GetUrl("A")
    sleep 500

}
PM()
inputbox, newreplacement, Neues Wort, Geben Sie die Ubersetzung des Wortes, , , ,0,0
if (!newreplacement)
{
    return
}
FileAppend, % "`n" clipboard, %German_txt%, UTF-8
fileappend, % "::" newreplacement ,%German_txt%, UTF-8-RAW
deepl := instr(Haystack, "deepl")
linguee := instr(Haystack, "linguee")
if (deepl | linguee)
{
    run, python -u "%German_py%" "%clipboard%" "%newreplacement%" , , hide
}
else
{
    run, python -u "%German_py%" "%clipboard%" "%newreplacement%" , , hide
}

clipboard = %clipboard_before%
Colemak()
Check_ctrl()
}

;Win + V::  Зберегти буфер у файл "English" і пошукати в Send_to_Longman_or_back

Send_to_Longman_or_back()
{
    a = %clipboard%
    Clipboard =
    send, ^c
    ClipWait, 2

    if (ErrorLevel)
    {
    return
}

ToolTip, %clipboard%
run, https://www.ldoceonline.com/dictionary/%clipboard%
clipboard = %a%

if (GetKeyState("Ctrl"))
{
    sendinput, {CtrlUp}
}

sleep 100
ToolTip
}

; Win + W:: Send selected word to translate.google.
German_Translate()
{
    a = %Clipboard%
    Clipboard =
    SendInput, ^c
    sleep 100
    ClipWait, 2
    if ErrorLevel
    {
    return
}
run, https://translate.google.com/#de/uk/%clipboard%
Clipboard = %a%
}
; Ctrl + Alt + Shift + W:: Send selected word to linguee
German_Translate_One_Word()
{
    a = %clipboard%
    SendInput, ^c
    sleep 100
    ClipWait, 2
    if ErrorLevel {
    return
}

    run https://www.linguee.de/deutsch-englisch/uebersetzung/%clipboard%.html
LINK := GetUrl("A")
; if (instr(LINK, "deepl"))
; {
;     run https://www.linguee.de/deutsch-englisch/uebersetzung/%clipboard%.html
;     sleep 1500
; }
; else if (instr(LINK, "linguee"))
; {
;     run https://www.deepl.com/translator?utm_source=lingueede&utm_medium=linguee&utm_content=header_logo#de/uk/%clipboard%
; }

; else
; {
;     run https://www.linguee.de/deutsch-englisch/uebersetzung/%clipboard%.html
;     run https://www.deepl.com/translator?utm_source=lingueede&utm_medium=linguee&utm_content=header_logo#de/uk/%clipboard%
;     start_time := A_TickCount
;     clipboard =
;     ToolTip, Press space to save
;     b = 0
;     While (A_TickCount - start_time < 10000)
;     {
;         if b == 1
;         {
;             ToolTip
;             Break
;         }

;         if GetKeyState("Esc", "P")
;         {
;             b = 1
;             ToolTip
;         }

;         if GetKeyState("Space", "P")
;         {
;             send,{AltUp}
;             Sendinput, !z
;             ClipWait
;             send, {AltUp}
;             array := StrSplit(Clipboard, "]")
;             clip := array[1]
;             newreplacement := array[2]
;             run, python -u "%German_py%" "%clip%" "%newreplacement%" , , hide
;             ToolTip
;             b = 1
;         }
;     }
;     ToolTip
; }

Clipboard = %a%
sleep 300
}

; Win + Ctrl + W:: Append selected word to Deutsch.txt
Open_German_Txt()
{
    run, %German_txt%
    WinWaitActive, ahk_exe Notepad.exe
    sleep 100
    sendinput, ^{end}
}

Find_Etymology_Of_German_Word()
{
    SendInput, ^c
    sleep 100
    ClipWait, 2
    if ErrorLevel
    {
    return
}

run https://www.dwds.de/wb/%clipboard%
Sleep, 1800
send, {esc}
Clipboard =
send, !z
ClipWait, 2
if ErrorLevel
{
    send, !z
}

tooltip, %clipboard%
sleep 1000
ToolTip
}

; Win + N:: General translate
General_Translate()
{
    ;https://www.deepl.com/en/translator#en/uk/hello%20my
    Temp_Variable := Clipboard
    Clipboard =
    SendInput, ^c
    ClipWait, 2
    if ErrorLevel
    {
    return
}
toTranslate := StrReplace(Clipboard, A_Space, "%20")
run, https://www.deepl.com/en/translator#uk/en/%toTranslate%
Clipboard := Temp_Variable
sleep 200
sleep 3100
sendinput , !{Tab}
sleep 1500
sendinput, ^v
Check_ctrl()
}

;Налаштування середньої клавіші
Middle()
{
    If WinActive("ahk_exe Code.exe") | WinActive("ahk_exe Telegram.exe") | WinActive("ahk_exe EXCEL.EXE") | WinActive("ahk_exe Mathematica.exe") | WinActive("WINWORD.EXE")
    {
        SendInput, ^v
        Check_ctrl()
    return
}
else
{
    sendinput, {mbutton}
    return
}
}

;Win + H:: додати слово в словник для заміни
newreplacement()
{
    inputbox, newreplacement,New word,Enter new word::
        if (newreplacement != "")
        {
            fileappend, `n%newreplacement%,F:\Shortcuts\FG\Shortcuts\Vocab.ahk, UTF-8-RAW

            run Ahk2Exe.exe /in "F:\Shortcuts\FG\Shortcuts\Vocab.ahk" /out "F:\Shortcuts\FG\Shortcuts\Vocab.ahk"
            WinWaitActive, ahk_exe Ahk2Exe.exe,,2
            if ErrorLevel
            {
                return
            }
            else
                winwait, Ahk2Exe Query
            ; sleep 270
            ControlClick, Button2,ahk_class #32770
        }
    return
}

;Win + K:: відкрити теку від NULP
University_Folder()
{
    Colemak()
    run %NULP%
    return
}

;Win + LButton:: pin app
EnableDisable_always_on_top()
{
    WinGet, currentWindow, ID, A
    WinGet, OutputVar, ProcessName, A
    WinGet, ExStyle, ExStyle, ahk_id %currentWindow%
    if (ExStyle & 0x8) ; 0x8 is WS_EX_TOPMOST.
    {
        Winset, AlwaysOnTop, off, ahk_id %currentWindow%
        SplashImage,, x0 y0 b fs12, AOT %OutputVar% off
        Sleep, 1500
        SplashImage, Off
    }
    else
    {
        WinSet, AlwaysOnTop, on, ahk_id %currentWindow%
        SplashImage,,x0 y0 b fs12, AOT %OutputVar% on
        Sleep, 1500
        SplashImage, Off
    }
    return
}
bash_bash_bash()
bash_bash_bash()
{
    ; clicking account selection in telegram
    if WinActive("ahk_exe Telegram.exe"){
        ; Save current mouse position
        CoordMode, Mouse, Screen
        MouseGetPos, OriginalMouseX, OriginalMouseY

        ; Send a click to coordinates (35, 64)
        Click 35, 64

        ; Return to the original mouse position
        MouseMove, %OriginalMouseX%, %OriginalMouseY%
        return
    }
    WinGetClass, winClass, % "ahk_id" . hWnd := WinExist("A")
    if (winClass ~= "Progman|WorkerW")
        oShellFolderView := GetDesktopIShellFolderViewDual()
    else if (winClass ~= "(Cabinet|Explore)WClass") {
        for window in ComObjCreate("Shell.Application").Windows
            if (hWnd = window.HWND) && (oShellFolderView := window.document)
            break
    }
    else
        run, "C:\Program Files\Git\git-bash.exe" "--cd=C:\Users\Mrqsyaka\Desktop"
    WinActivate
    Return

    for item in oShellFolderView.SelectedItems
        not_result .= (not_result = "" ? "" : "`n") . item.path
    if !not_result
        not_result := oShellFolderView.Folder.Self.Path

    run, "C:\Program Files\Git\git-bash.exe" "--cd=%not_result%"
    WinActivate

}
OpentWithPotPlayer()
{
    run,"C:\Users\Msqsyaka\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\PotPlayer.lnk" %Clipboard%
    FileAppend, %Clipboard% `n, E:\Media\History\history.txt
}

Get_Path(hwnd="") {
    WinGet, process, processName, % "ahk_id" hwnd := hwnd? hwnd:WinExist("A")
    WinGetClass class, ahk_id %hwnd%
    if (process = "explorer.exe")
    if (class ~= "(Cabinet|Explore)WClass") {
        for window in ComObjCreate("Shell.Application").Windows
            if (window.hwnd==hwnd)
            path := window.Document.FocusedItem.path

        SplitPath, path,,dir
    }
    return dir
}

OpenCmdInCurrent()
{
    path := Get_Path()
    if (path == "")
    {
        run "C:\Program Files\Git\git-bash.exe" "--cd=C:\Users\Msqsyaka\Desktop"
        WinActivate
    }
    else
    {
        run "C:\Program Files\Git\git-bash.exe" "--cd=%path%"
        WinActivate
    }
}

Convert_To_Capslock()
{
    Saved_Value := Clipboard
    send, ^x
    E := RegExReplace(Clipboard,"(^.*.*$)", "$U1")
    sendinput, % E
    Clipboard := Saved_Value
}

Open_with_vs_code() {
    WinGetClass, winClass, % "ahk_id" . hWnd := WinExist("A")
    if (winClass ~= "Progman|WorkerW")
        oShellFolderView := GetDesktopIShellFolderViewDual()
    else if (winClass ~= "(Cabinet|Explore)WClass") {
        for window in ComObjCreate("Shell.Application").Windows
            if (hWnd = window.HWND) && (oShellFolderView := window.document)
            break
    }
    else
    Return

for item in oShellFolderView.SelectedItems
    not_result .= (not_result = "" ? "" : "`n") . item.path
if !not_result
    not_result := oShellFolderView.Folder.Self.Path

run, "%VSCode_path%" "%not_result%" --ms-enable-electron-run-as-node "%not_result%"
}

GetDesktopIShellFolderViewDual()
{
    IShellWindows := ComObjCreate("{9BA05972-F6A8-11CF-A442-00A0C90A8F39}")
    desktop := IShellWindows.Item(ComObj(19, 8)) ; VT_UI4, SCW_DESKTOP

    ; Retrieve top-level browser object.
    if ptlb := ComObjQuery(desktop
        , "{4C96BE40-915C-11CF-99D3-00AA004AE837}" ; SID_STopLevelBrowser
    , "{000214E2-0000-0000-C000-000000000046}") ; IID_IShellBrowser
    {
        ; IShellBrowser.QueryActiveShellView -> IShellView
        if DllCall(NumGet(NumGet(ptlb+0)+15*A_PtrSize), "ptr", ptlb, "ptr*", psv) = 0
        {
            ; Define IID_IDispatch.
            VarSetCapacity(IID_IDispatch, 16)
            NumPut(0x46000000000000C0, NumPut(0x20400, IID_IDispatch, "int64"), "int64")

            ; IShellView.GetItemObject -> IDispatch (object which implements IShellFolderViewDual)
            DllCall(NumGet(NumGet(psv+0)+15*A_PtrSize), "ptr", psv
            , "uint", 0, "ptr", &IID_IDispatch, "ptr*", pdisp)

            IShellFolderViewDual := ComObjEnwrap(pdisp)
            ObjRelease(psv)
        }
        ObjRelease(ptlb)
    }
    return IShellFolderViewDual
}

Check_ctrl()
{
    if (GetKeyState("Ctrl"))
    {
        sendinput, {CtrlUp}
    }
}

Check_shift()
{
    if (GetKeyState("Shift"))
    {
        sendinput, {ShiftUp}
    }
}

Check_alt()
{

    if (GetKeyState("Alt"))
    {
        sendinput, {AltUp}
    }
}

For_space()
{
    timer := 0
    while GetKeyState("Space", "P")
    {
        timer++
        Sleep, 1
        ToolTip, % timer
    }
    if timer < 100
    {
        send,{space}
    }
    else if timer > 100
    {
        Send above_100_%timer%_
    }
    timer := 0
    return
}

GetUrl(WinTitle*)
{
    active := WinExist("A")
    if !(hWnd := WinExist(WinTitle*))
    return
; CLSID_CUIAutomation, IID_IUIAutomation
IUIAutomation := ComObjCreate("{ff48dba4-60ef-4201-aa87-54103eef594e}", "{30cbe57d-d9d0-452a-ab13-7ac5ac4825ee}")
; IUIAutomation::ElementFromHandle
DllCall(NumGet(NumGet(IUIAutomation+0)+6*A_PtrSize), "Ptr",IUIAutomation, "Ptr",hWnd, "Ptr*",eRoot:=0)
sleep 100
WinGetClass wClass
sleep 100
; Gecko family
if (wClass ~= "Mozilla") {
    GetUrl_FindFirst(IUIAutomation, eRoot, 50004, url:="") ; Edit
    sleep 100
    url := StrGet(NumGet(url, 8, "Ptr"), "UTF-16")
    ; Chromium-based, active
    sleep 100
} else if (active = hWnd) {
    GetUrl_FindFirst(IUIAutomation, eRoot, 50030, url:="") ; Document
    url := StrGet(NumGet(url, 8, "Ptr"), "UTF-16")
    sleep 100
    ; Chromium-based, inactive
} else {
    eToolbar := GetUrl_FindFirst(IUIAutomation, eRoot, 50021) ; ToolBar
    sleep 100
    GetUrl_FindFirst(IUIAutomation, eToolbar, 50004, url:="") ; Edit
    url := StrGet(NumGet(url, 8, "Ptr"), "UTF-16")
    WinGetTitle wTitle
    ; Google Chrome
    sleep 100
    if (InStr(wTitle, "- Google Chrome") && url && !(url ~= "^\w+:")) {
        eMenu := GetUrl_FindFirst(IUIAutomation, eToolbar, 50011,, 30001) ; MenuItem
        VarSetCapacity(rect, 16, 0)
        ; IUIAutomation::IntSafeArrayToNativeArray
        DllCall(NumGet(NumGet(eMenu+0)+43*A_PtrSize), "Ptr",eMenu, "Ptr",&rect)
        w := (r := NumGet(rect, 8, "Int")) - (l := NumGet(rect, 0, "Int"))
        h := (b := NumGet(rect, 12, "Int")) - (t := NumGet(rect, 4, "Int"))
        url := "http" (w > h*2 ? "" : "s") "://" url
        sleep 100
        ObjRelease(eMenu)
    }
    ; Microsoft​ Edge
    static edge := "- Microsoft" Chr(0x200b) " Edge" ; Zero-width space
    if (InStr(wTitle, edge) && url && !(url ~= "^\w+:"))
        url := "http://" url
    ObjRelease(eToolbar)
}
ObjRelease(eRoot), ObjRelease(IUIAutomation)
return url
}

; 30001 = UIA_BoundingRectanglePropertyId
; 30045 = UIA_ValueValuePropertyId
GetUrl_FindFirst(IUIAutomation, Element, ControlTypeId, ByRef PropertyValue := "", PropertyId := 30045) {
    static conditions := {}
    if (conditions.HasKey(ControlTypeId)) {
        condition := conditions[ControlTypeId]
    } else {
        VarSetCapacity(value, 8 + 2 * A_PtrSize), NumPut(3, value, 0, "UShort"), NumPut(ControlTypeId, value, 8, "Ptr")
        (A_PtrSize = 8)
        ; IUIAutomation::CreatePropertyCondition
        ? DllCall(NumGet(NumGet(IUIAutomation+0)+23*A_PtrSize), "Ptr",IUIAutomation, "UInt",30003, "Ptr",&value, "Ptr*",condition:=0)
        : DllCall(NumGet(NumGet(IUIAutomation+0)+23*A_PtrSize), "Ptr",IUIAutomation, "UInt",30003, "UInt64",NumGet(value, 0, "UInt64"), "UInt64",NumGet(value, 8, "UInt64"), "Ptr*",condition:=0)
        conditions[ControlTypeId] := condition
    }
    ; IUIAutomationElement::FindFirst
    DllCall(NumGet(NumGet(Element+0)+5*A_PtrSize), "Ptr",Element, "UInt",0x4, "Ptr",condition, "Ptr*",eFirst:=0)
    if (!eFirst)
    return
VarSetCapacity(PropertyValue, 8 + 2 * A_PtrSize), NumPut(0, PropertyValue, 0, "UShort"), NumPut(0, PropertyValue, 8, "Ptr")
; IUIAutomationElement::GetCurrentPropertyValue
DllCall(NumGet(NumGet(eFirst+0)+10*A_PtrSize), "Ptr",eFirst, "UInt",PropertyId, "Ptr",&PropertyValue)
return eFirst
}
remove_file()
{
    FileDelete, C:\Temp\Filename.ahk
}

create()
{
    FileAppend,
    (
    #NoEnv
    #MaxHotkeysPerInterval 99000000
    #HotkeyInterval 99000000
    #KeyHistory
    #NoTrayIcon
    FileEncoding, UTF-8
    ListLines Off
    Process, Priority, , A
    SetBatchLines, -1
    SetKeyDelay, -1, -1
    SetMouseDelay, -1
    SetDefaultMouseSpeed, 0
    sc56::
    return
    !sc56::
    return
    ^sc56::
    return
    ), C:\Temp\Filename.ahk

    sleep 500
    run, "C:\Users\Mrqsyaka\AppData\Local\Programs\Microsoft VS Code\Code.exe" "C:\Temp\Filename.ahk" --ms-enable-electron-run-as-node "C:\Temp\Filename.ahk"

}
