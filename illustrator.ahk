#IfWinActive ahk_class illustrator

    ; Agrupar desagrupar
    NumpadSub::
        Send, ^g
    return

    !NumpadSub::
        Send, ^!g::
    return

    ; Bloquear capa
    F2::
        Send, ^2
    return

    ; Desbloquear capas
    !F2::
        Send, ^!2
    return

    ; Bloquear / desbloquear guias
    +!F2::
        Send, ^+!2
    return

    ; Bloquear todas las capas menos la seleccionada
    +F2::
        Send, ^+2
    return

    ; Ocultar capa
    F3::
        Send, ^3
    return

    ; Desocultar capas
    !F3::
        Send, ^!3
    return

    ; Ocultar / desocultar guias
    +!F3::
        Send, ^+!3
    return

    ; Seleccionar todos los objetos de una capa
    F1::
        Send, {F2}
    return

    NumpadAdd::
        Send, o
    return

    +NumpadAdd::
        Send, +o
    return

    F7::
        Send, m
    return

    +F7::
        Send, +m
    return

    ;Make clipping layer
    +F8::
        Send, +{F7}
    return

    !F7::
        Sleep 120
        SendInput, y
    return

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

    ; Distribuir horizontal
    $^F7::
        Send, {F5}
    return

    ; Distribuir vertical
    $^+F7::
        Send, ^+{F5}
    return

    $^+!MButton::
        Send, ^+!u
    return

    ~+RButton::
        Send, ^z
    return

    ; Limpiar paths
    ~^+RButton::
        Send, +{F5}
    return

    ;Deseleccionar todo
    ~!RButton::
        Send, v
        SendInput, ^y
    return

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

    RButton::
        if(GetKeyState("Space")){
            Send, {LControl Down}
            Send, {LButton Down}
        }
        else{
            Send, {RButton}
        }

    return

    ~RButton Up::
        Send {LControl Up}
        Send {LButton Up}
    return

    ; Normal export
    F9::
        Send, {F4}
    return

    ; Fast export
    +F9::
        SendInput, {F4}
        Sleep 50
        Send {Enter}
        Sleep 50
        Send {Enter}
    return

    MButton::
        mousegetpos, x, y
        if(y>73 and y<98){
            Click, Right
            Sleep, 50
            Send, {Down}
            Send, {Down}
            Send, {Enter}
        }
        else{
            Send, {Enter}
        }
    return

    ; Centrar horizontal
    !MButton::
        Send, ^+k
    return

    ; Centrar vertical
    +MButton::
        Send, ^+j
    return

    ; Centrar horizontal y vertical
    !+MButton::
        Send, ^+k
        Send, ^+j
    return

    ; Duplicar capa
    +F4::
        Send, {F9}
    return

    ; Copiar
    F4::
        Send, ^c
    return

    ; Cortar
    !F4::
        Send, !^c
    return

    ; Pegar
    F5::
        Send, ^v
    return

    ; Paste in place
    !F5::
        Send, ^!v
    return

    ; Alinar a las coordenadas

    ;Hide / unhide bounding box
    F10::
        if(GetKeyState("Space")){
            Send, {Space Up}
            Send, ^9
            Send, v
            return
        }
        else{
            Send, ^+r
            return
        }

    ;Scale
    F12::
        if(GetKeyState("Space")){
            Send, {Space Up}
            Send, ^+9
            Send, v
            return
        }
        else{
            Send, ^e
            return
        }

    ; Hide unhide artboards
    F11::
        if(GetKeyState("Space")){
            Send, {Space Up}
            Send, ^+8
            Send, v
            return
        }
        else{
            Send, ^+h
            return
        }

    ; Create blend
    F8::
        if(GetKeyState("Space")){
            Send, {Space Up}
            Send, ^8
            Send, v
            return
        }
        else{
            Send, ^!b
            return
        }
    ; -------------

    ; Bajar capa
    ^+NumpadSub::
        Send, ^+s
    return

    ; Subir capa
    ^+NumpadAdd::
        Send, ^+a
    return

    !Del::
        Send, {Esc}
    return

    +Del::
        Send, +{F9}
    return

    !+Del::
        Send, ^z
    return

    +F6::
        Send, +p
    return

    F6::
        Send, p
    return

    !F6::
        Sleep 200
        Send, l
    return

    ; Extend path tool
    !+F6::
        Sleep 200
        Send, j
    return

    ; Ajustar artboard a la seleccion
    !F1::
        SendInput, ^{F11}
    return

    ; Crear capa vacia
    +F5::
        Send, ^{F9}
    return

    ; Paste with remember settings
    +!F5::
        Send, {F12}
    return

    ; Hide edges
    !F10::
        Send, ^h
    return

    $^F10::
        SendInput, ^1
    return

    $!+F10::
        Send, ^!5
    return

    ; Create clipping group
    $^+F10::
        Send, ^q
    return

    ; Convert shape into guides
    +F10::
        Send, ^5
    return

    ; Overprint preview
    +F11::
        Send, !+^h
    return

    ; Transparent background
    !F11::
        Send, !+^r
    return

    ; Outline mode
    $+!F11::
        Send, !^h
    return

    ; Merge vertices
    $+^F12::
        Send, ^!j
        Send, {Enter}
        Send, !^p
    return

    ; Move
    !F12::
        Send, ^!e
    return

    ; Transform each
    !+F12::
        Send, ^!+e
    return

    ; Flip horizontal
    ^F8::
        Send, ^{F7}
    return

    ; Super expand
    $^+F8::
        Send, ^+Y
        Send, ^+T
        Send, {Enter}
    return

    ; Blend options
    $!F8::
        Send, ^!+b
    return

    ; Pathfinder unite
    ^+F9::
        Send, +{F12}
    return

    ; Deselect rest script
    +F1::
        Send, +{F2}
    return

    ~Space Up::
        Send, {LAlt Up}
    return