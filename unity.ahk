#IfWinActive ahk_exe Unity.exe

    F1::
        Send, f
    return

    +F1::
        Send, !c
    return

    F2::
        Send, +w
    return

    F6:: ;search

        if (unitySearch == 1)
        {
            Send, ^1
            unitySearch = 0
        }
        else
        {
            Send, ^k
            unitySearch = 1
        }
    return

    ; Navigation like Blender
    MButton::
        Send, {LAlt Down}
        Send, {LButton Down}
    return

    MButton Up::
        Send, {LAlt Up}
        Send, {LButton Up}
        Send, {LAlt Up}
    return

    F7::
    Send ^+p        
    return