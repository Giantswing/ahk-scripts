#IfWinActive ahk_exe Figma.exe

    NumpadSub::
        Send, ^g
    return

    !NumpadSub::
        Send, ^+g
    return

    ^!NumpadSub::
        Send, ^!g
    return

    F5::
        Send, ^v
    return

    ^+F5::
        Send, ^+v
    return

    F2::
        Send, ^+l
    return

    !F2::
        Send, ^+!l
    return

    F3::
        Send, ^+h
    return

    !F3::
        Send, ^a
        Sleep, 25
        Send, ^+h
    return

    +NumpadAdd::
        Send, i
    return

    ; Press Escape
    !Del::
        Send, {Esc}
    return

    ; Horizontal Reverse
    ^F8::
        Send, +h
    return

    ; Horizontal distribute
    ^F7::
        Send, !+h
    return

    ^+F7::
        Send, !+v
    return

    ^+!F7::
        Send, ^!+t
    return

    WheelUp::
        if(GetKeyState("Space")){
            Send, {+}
        }
        else{
            Send, {WheelUp}
        }
    return

    WheelDown::
        if(GetKeyState("Space")){
            Send, {-}
        }
        else{
            Send, {WheelDown}
        }
    return

    F7::
        Send, r
    return

    +F7::
        Send, o
    return

    !MButton::
        Send, !h
    return

    +MButton::
        Send, !v
    return

    ; Make clipping mask
    ^+F10::
        Send, ^!m
    return

    ; Coordinate alignment

    F10::
        if(GetKeyState("Space")){
            Send, {Space Up}
            Send, !a
            return
        }
        else{
            return
        }

    F12::
        if(GetKeyState("Space")){
            Send, {Space Up}
            Send, !d
            return
        }
        else{
            Send, k
        }

    F11::
        if(GetKeyState("Space")){
            Send, {Space Up}
            Send, !s
            return
        }
        else{
            return
        }

    F8::
        if(GetKeyState("Space")){
            Send, {Space Up}
            Send, !w
            return
        }
        else{
            return
        }

    ^+F12::
        Send, ^j
    return

    F6::
        Send, p
    return

    !F6::
        Send, l
    return

    ~Space Up::
        if((A_PriorHotkey=A_ThisHotkey)&&(A_TimeSincePriorHotkey<=150)){
            Send, ^p
        }
        else {
            Send, {LAlt Up}
        }
    return

    ;Toggle layout grid
    +F3::
        Send, ^+4
    return

    ;fit selected
    F1::
        Send, +2
    return

    ;fit view
    +F1::
        Send, +1
    return

    ;toggle outline view
    !+F11::
        Send, ^+3
    return

    ; Mousewheel key control

    ^WheelDown::
        Send, {Left}
    return

    ^WheelUp::
        Send, {Right}
    return

    ^+WheelDown::
        Send, {Down}
    return

    ^+WheelUp::
        Send, {Up}
    return

    ; Move layer up-down
    ^+NumpadAdd::
        Send, ^{vkDD}
    return

    ^+NumpadSub::
        Send, ^{vkDB}
    return

    ^NumpadSub::
        Send, ^!g
    return

    ; Copy
    F4::
        Send, ^c
    return

    ; Cut
    !F4::
        Send, ^x
    return