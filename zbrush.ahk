#IfWinActive ahk_exe ZBrush.exe

    F1::
        Send, {LAlt Down}
    return

    F1 Up::
        Send, {LAlt Up}
    return

    F10::
        Send, ^z
    return

    NumpadAdd::
        Send, b
    return

    F4::
        Send, +d
    return

    F5::
        Send, d
    return

    RButton::
        Send, {LShift Down}
    return

    RButton Up::
        Send, {LShift Up}
    return

    MButton::
        Send, {Space Down}
    return

    MButton Up::
        Send, {Space Up}
    return

    F12::
        Send, {CtrlDown}
    return

    F12 Up::
        Send, {CtrlUp}
    return