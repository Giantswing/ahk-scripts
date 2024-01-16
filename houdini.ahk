#IfWinActive ahk_exe houdinifx.exe

    $MButton::
        MouseGetPos, xpos, ypos, WinTitle
        If (xpos < 1700){
            Send, {Alt Down}
            Send, {LButton Down}
        }
        Else {

            Send, {Space Down}
            Send, {LButton Down}
        }
    return

    $MButton Up::
        Send, {Alt Up}
        Send, {LButton Up}
        Send, {Space Up}
        Send, {LButton Up}
    return

    WheelUp::
        Send, {Alt Down}
        Send, {WheelUp}
        Send, {Alt Up}
    return

    WheelDown::
        Send, {Alt Down}
        Send, {WheelDown}
        Send, {Alt Up}
    return

    +a::
        Send, {Tab}
    return

    !Del::
        Send, {Esc}
    return

    $^+WheelUp::
        Send {WheelUp}
    return

    $^+WheelDown::
        Send {WheelDown}
    return

    F1::
        Send, {MButton Down}
    return

    F1 Up::
        Send, {MButton Up}
    return
