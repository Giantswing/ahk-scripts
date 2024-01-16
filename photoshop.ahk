#IfWinActive ahk_class Photoshop

    ;Disable/enable mouse movement

    MButton::
        if((A_PriorHotkey=A_ThisHotkey)&&(A_TimeSincePriorHotkey<=450)){
            if(tabletMode=0)
            {
                BlockInput, MouseMove
                tabletMode=1
            }
            else
            {
                BlockInput, MouseMoveOff
                tabletMode=0
            }
        }
        else
        {
            Send, {MButton}
        }
    return

    F1::
        if(tabletMode=1){
            Send, r
        }
    return

    F1 Up::
        if(tabletMode=1){
            Send, b
            Sleep, 100
            Send, b
        }
    return

    F2::
        if(tabletMode=1){
            Send, ^z
        }
        else
        {
            Send, {F2}
        }
    return

    F3::
        if(tabletMode=1){
            Send, z
        }
    return

    F3 Up::
        if(tabletMode=1){
            Send, b
            Sleep, 100
            Send, b
        }
    return

    F4::
        if(tabletMode=1){
            Send, {LCtrl Down}
            Send, {LAlt Down}
            Send, {RButton Down}
            KeyWait, F4
            Send, {LCtrl Up}
            Send, {LAlt Up}
            Send, {RButton Up}
        }
        else
        {
            SendInput, {F4}
        }

    return

    F5::
        if(tabletMode=1){
            Send, {Space Down}
            keywait, F5
        }
        else
        {
            Send, {F5}
        }
    return

    F5 Up::
        if(tabletMode=1){
            Send, {Space Up}
        }
    return

    F6::
        Send, w
    return

    F7::
        if(tabletMode=1){
            Send, e
            if((A_PriorHotkey=A_ThisHotkey)&&(A_TimeSincePriorHotkey<=350)){
                Send, b
            }
        }
        else
        {
            Send, m
        }
    return

    F8::
        if(tabletMode=1){
            Send, l
            if((A_PriorHotkey=A_ThisHotkey)&&(A_TimeSincePriorHotkey<=350)){
                Send, ^d
            }
        }
        else
        {
            Send, {F8}
        }
    return

    F9::
        if(tabletMode=1){
            Send, v
        }
        else
        {
            Send, {F9}
        }
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

    NumpadAdd::
        Send, i
    Return

    NumpadAdd Up::
        Send, {i Up}
        Send, b
    Return

; ----------------------------------------------------------------------------------------------------
