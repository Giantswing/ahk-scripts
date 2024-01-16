#IfWinActive ahk_exe Plasticity.exe

    $F3::
        Send, h
    return

    $+F3::
        Send, +h
    return

    $!F3::
        Send, !h
    return

    F1::
        Send, -
    return

;LShift::LAlt
;LAlt::LShift