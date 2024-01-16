#IfWinActive ahk_exe PureRef.exe

    F1::
        Send, ^a
        Send, ^+r
    return

;---------------------------------------------------------------------------

#IfWinActive ahk_exe nuclearthrone.exe

    F4::
        ;send mouse wheel up
        Send, {WheelUp}
        Sleep, 30
        SendInput, {LButton}
        SendInput, {LButton}
        SendInput, {LButton}
        Sleep, 100
        Send, {WheelUp}
    return

    Del::
        Send, {LButton Down}
        Send, {LButton Up}
        Send, {LButton Down}
        Send, {LButton Up}
        Send, {LButton Down}
        Send, {LButton Up}
    return

;---------------------------------------------------------------------------

#IfWinActive ahk_exe toolbag.exe

    F1::
        SendInput, ^{f}
    return

#IfWinActive

;tildes
;á minuscula = {U+00E1}
;Á mayúscula = {U+00C1}
;é minúscula = {U+00E9}
;É mayúscula = {U+00C9}
;í minúscula = {U+00ED}
;Í mayúscula = {U+00CD}
;ó minúscula = {U+00F3}
;Ó mayúscula = {U+00D3}
;ú minúscula = {U+00FA}
;Ú mayúscula = {U+00DA}

::pq::porque
::pqe::por qu{U+00E9}

;template literal

::tll::``
