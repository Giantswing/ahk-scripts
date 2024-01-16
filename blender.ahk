#IfWinActive ahk_exe blender.exe

    ; Press Escape
    !Del::
        Send, {Esc}
    return

    ; Zoom on selected
    F1::
        Send, {NumpadDot}
    return

    ; View through camera lens
    +F1::
        Send, {Numpad0}
    return

    ; Select linked
    ^F1::
        Send, l
    return

    ; Select inverse
    !F1::
        Send, ^i
    return

    ;Select collection
    F2::
        Send, +g
        Send, o
    return

    ; Hide selected
    F3::
        Send, h
    return

    ; Unhide all
    !F3::
        Send, !h
    return

    ; Solo selection
    +F3::
        Send, +h
    return

    ; Select linked flat faces
    $^!F1::
        Send, ^!l
    return

    NumpadSub::
        Send, ^g
    return