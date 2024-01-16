#IfWinActive ahk_class ApplicationFrameWindow

    ; isSpacePressed := GetKeyState("Space")

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
        Send, ^+h
    return

    ; Vertical distribute

    $^+F7::
        Send, ^+v
    return

    ; Group
    NumpadSub::
        Send, ^g
    return

    ; Ungroup with alt

    !NumpadSub::
        Send, ^+g
    return

    ; Vertical align

    +MButton::
        Send, +m
    return

    ; Horizontal align

    !MButton::
        Send, +c
    return

    ; Coordinate alignment

    $F11::
        if(GetKeyState("Space")){
            Send, {Space Up}
            Send, ^+{Down}
        }
        else{
            Send, {F11}
        }
    return

    $F8::
        if(GetKeyState("Space")){
            Send, {Space Up}
            Send, ^+{Up}
        }
        else{
            Send, {F8}
        }
    return

    $F10::
        if(GetKeyState("Space")){
            Send, {Space Up}
            Send, ^+{Left}
        }
        else{
            Send, {F10}
        }
    return

    $F12::
        if(GetKeyState("Space")){
            Send, {Space Up}
            Send, ^+{Right}
        }
        else{
            Send, F12
        }
    return

    ; Tools

    F7::
        Send, r
    return

    +F7::
        Send, e
    return

    !F7::
        Sleep 180
        SendInput, y
    return

    F6::
        Send, p
    return

    +F6::
        Send, +p
    return

    !F6::
        Send, l
    return

    ; Zoom in/out with alt plus mouse-wheel

    WheelDown::
        if(GetKeyState("Space")){
            Send, {LAlt Down}
            Send, {WheelDown}
            Send, {LAlt Up}
        }
        else{
            Send, {WheelDown}
        }
    return

    WheelUp::
        if(GetKeyState("Space")){
            Send, {LAlt Down}
            Send, {WheelUp}
            Send, {LAlt Up}
        }
        else{
            Send, {WheelUp}
        }
    return

    ; Hide selected

    F3::
        Send, ^{SC00D}
    return

    ; Unhide all

    !F3::
        Send, ^a
        Sleep, 20
        Send, ^{SC00D}
        Sleep, 20
        Send, ^{SC00D}
    return

    ; Lock/unlock selected layers

    F2::
        Send, ^l
    return

    ; Unlock everything

    !F2::
        Send, ^a
        Sleep, 20
        Send, ^l
        Sleep, 20
        Send, ^l
    return

    ; Hide/unhide guides

    !+F3::
        Send, ^+{,}
    return

    ; Lock/unlock guides

    !+F2::
        Send, ^+{.}
    return

    ; Hide/unhide design guide
    +F3::
        Send, ^+{SC00C}
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