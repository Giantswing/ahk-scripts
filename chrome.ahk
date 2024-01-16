#IfWinActive ahk_exe chrome.exe

    ;return to previous page
    F1::
        Send, {Alt Down}{Left}{Alt Up}
    return

    ;go to next page
    F2::
        Send, {Alt Down}{Right}{Alt Up}
    return

    ;open development tools
    F12::
        Send, ^+c
    return

#IfWinActive ahk_exe brave.exe

    ;return to previous page
    F1::
        Send, {Alt Down}{Left}{Alt Up}
    return

    ;go to next page
    F2::
        Send, {Alt Down}{Right}{Alt Up}
    return

    ;open development tools
    F12::
        Send, ^+c
    return