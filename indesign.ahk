#IfWinActive ahk_exe InDesign.exe

    !NumpadAdd::
        Send, +{Enter}
    return

    +!NumpadAdd::
        Send, {NumpadEnter}
    return

    +F3::
        Send, w
    return

    /*
    ^!+NumpadAdd::
    Send, ^+q
    Sleep, 100
    Click, 2229, 1111
    Sleep, 100
    Click 2205, 857
    Sleep, 100
    Click 2229, 857
    Sleep, 100
    Click 2233, 349
    return
    */

    ; Align Text
    ^+!F7::
        Send, ^+l
    return

    ^+!F8::
        Send, ^+c
    return

    ^+!F9::
        Send, ^+r
    return

    ; Press Escape
    !Del::
        Send, {Esc}
    return

    ; Copy
    F4::
        Send, ^c
    return

    ; Cut
    !F4::
        Send, ^x
    return

    ; Paste
    F5::
        Send, ^v
    return

    ; Paste in place
    !F5::
        Send, ^!+v
    return

    ^+F5::
        Send, ^+v
    return

    ; Move layer up
    ^+NumpadAdd::
        Send, ^{SC02B}
    return

    ; Move layer down
    ^+NumpadSub::
        Send, ^{SC027}
    return

    ; Horizontal distribute
    ^F7::
        Send, {SC02B}
    return

    ; Vertical distribute

    $^+F7::
        Send, +{SC02B}
    return

    ; Eyedropper
    +NumpadAdd::
        Send, i
    return

    ; Group
    NumpadSub::
        Send, ^g
    return

    ; Ungroup with alt

    $!NumpadSub::
        Send, ^+g
    return

    ; Normal Alignment

    !MButton::
        Send, ^+k
    return

    +MButton::
        Send, ^+j
    return

    !+MButton::
        Send, ^+k
        Send, ^+j
    return

    ; Coordinate alignment

    F10::
        if(GetKeyState("Space")){
            Send, {Space Up}
            Send, ^9
            Send, v
            return
        }
        else{
            Send, ^+r
            return
        }

    F12::
        if(GetKeyState("Space")){
            Send, {Space Up}
            Send, ^+9
            Send, v
            return
        }
        else{
            Send, ^e
            return
        }

    F11::
        if(GetKeyState("Space")){
            Send, {Space Up}
            Send, ^+8
            Send, v
            return
        }
        else{
            Send, ^+h
            return
        }

    F8::
        if(GetKeyState("Space")){
            Send, {Space Up}
            Send, ^8
            Send, v
            return
        }
        else{
            Send, ^!b
            return
        }

    ; Tools

    F7::
        Send, m
    return

    +F7::
        Send, l
    return

    !F7::
        Sleep 180
        SendInput, y
    return

    F6::
        Send, p
    return

    !F6::
        Send, y
    return

    ; Zoom in/out with alt plus mouse-wheel

    $WheelDown::
        if(GetKeyState("Space")){
            Send, {LAlt Down}
            Send, {WheelDown}

        }
        else{
            Send, {LAlt Up}
            Send, {WheelDown}
        }
    return

    $WheelUp::
        if(GetKeyState("Space")){
            Send, {LAlt Down}
            Send, {WheelUp}
        }
        else{
            Send, {LAlt Up}
            Send, {WheelUp}
        }
    return

    ; Lock/unlock selected layers

    F2::
        Send, ^l
    return

    ; Unlock everything

    !F2::
        Send, ^!l
    return

    ; Deselect all layers
    !RButton::
        Send, {Esc}
        Send, ^+a
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

    ~Space Up::
        Send, {LAlt Up}
    return

    ^+Enter::
        Send, {NumpadEnter}
    return