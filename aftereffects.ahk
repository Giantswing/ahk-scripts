#IfWinActive ahk_exe AfterFX.exe

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

    ; Paste
    F5::
        Send, ^v
    return

    ; Copy
    F4::
        Send, ^c
    return

    ; Cut layer at time marker position
    $!F4::
        Send, ^+d
    return

    ; Trim at marker start / end of layer
    $+F4::
        Send, ^+!{+}
    return

    $+!F4::
        Send, ^+!{-}
    return

    ; Move timeline.
    ^WheelUp::
        Send, {PgDn}
    return

    ^WheelDown::
        Send, {PgUp}
    return

    ; Move between keyframes.
    ^+WheelUp::
        Send, k
    return

    ^+WheelDown::
        Send, j
    return

    ; Move to the start and end of the layer
    ^!WheelUp::
        Send, o
    return

    ^!WheelDown::
        Send, i
    return

    ; Lock selected layers.
    F2::
        SendInput, ^l
    return

    ; Unlock all layers.
    $!F2::
        SendInput, ^+l
    return

    ; Hide unhide keyframed properties.
    +F1::
        Send, u
    return

    ; Select all layers with the same layer color
    F1::
        Send, ^+b
    return

    ; Send Enter-Rename Layer
    MButton::
        Send, {Enter}
    return

    ; Hide unhide selected layers.
    $F3::
        Send, ^!+v
        Send, {LControl Up}
        Send, {LAlt Up}
        Send, {Shift Up}
    return

    ; Unhide all layers
    !F3::
        Send, ^a
        Send, ^!+v
        Send, ^!+v
    return

    ; Move layer up
    ^+NumpadAdd::
        Send, ^!{Up}
    return

    ; Move layer down
    ^+NumpadSub::
        Send, ^!{Down}
    return

    ; Group
    NumpadSub::
        Send, ^g
    return

    ; Ungroup
    !NumpadSub::
        Send, +^g
    return

    ; Precomp layers
    F11::
        Send, ^+c
        Sleep, 50
        Send, {Enter}
    return

    ; Un-precompose layers
    !F11::
        Send, ^!+c
        Sleep, 100
        Send, {Tab}
        Sleep, 20
        Send, {Tab}
        Sleep, 20
        Send, {Tab}
        Sleep, 20
        Send, {Space}
        Sleep, 20
        Send, {Enter}
    return

    ; Easy ease
    F8::
        Send, {F7}
    return

    ; Hold frames
    $!F8::
        Send, ^!h
    return

    ; Hide all except selected layers.
    $+F3::
        Send, ^+v
        Send, {LControl Up}
        Send, {LAlt Up}
        Send, {Shift Up}
    return

    !Rbutton Up::
    return

    ; Deselect all layers
    !RButton::
        Send, {Esc}
        Send, ^+a
    return

    ; Press Escape
    !Del::
        Send, {Esc}
    return

    ~Space Up::
        Send, {LAlt Up}
    return

;Transform button=tb
;tb=scale dialog
;tb+alt=position dialog
;tb+shift=opacity dialog
;tb+alt+shift=rotation dialog