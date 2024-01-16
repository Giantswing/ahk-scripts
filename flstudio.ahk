#IfWinActive ahk_exe FL64.exe
    F1::
        Send, p
    return

    $+F1::
        Send, t
    return

    F2::
        Send, l
    return

    F5::
        Send, ^b
    return

    F3::
        Send, ^4
    return

    +F3::
        Send, ^5
    return

    $+RButton::
        Send, {RShift Down}
        Send, {LButton Down}
    return

    $+RButton Up::
        Send, {LButton Up}
        Send, {RShift Up}
    return

    $^+RButton::
        Send, {RShift Down}
        Send, {RButton Down}
    return

    $^+RButton Up::
        Send, {RButton Up}
        Send, {RShift Up}
    return

    F12::
        Send, +m
    return

    $!Del::
        Send, !{F12}
    return

    $+Del::
        Send, ^!z
    return