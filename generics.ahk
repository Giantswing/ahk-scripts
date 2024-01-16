; GENÉRICAS PARA TODOS LOS PROGRAMAS

#IfWinActive

; Variables for threshold and cursor movement tracking
threshold := 50
x_start := 0
y_start := 0

; Middle button magic --------------------------------------------

; WheelDown::
;     if(GetKeyState("RButton")){
;         WinClose, A
;         Sleep, 500
;         Send, {LButton}
;     }
;     else{
;         Send, {WheelDown}
;     }
; return

; WheelUp::
;     if(GetKeyState("RButton")){
;         WinMinimize, A
;         Sleep, 500
;         Send, {LButton}
;     }
;     else{
;         Send, {WheelUp}
;     }

; F11::
;     Send, {Alt down}{Tab}
;     KeyWait, F11
;     Send, {LButton}
;     Send, {Alt up}
; return

; RButton & LButton::
;     MouseGetPos, x_start, y_start
;     KeyWait, LButton
;     MouseGetPos, x_current, y_current
;     x_movement := x_current - x_start
;     y_movement := y_current - y_start

;     ; Send, {LButton}
;     ; Send, {LButton Up}
;     ; Send, {RButton Up}
;     Sleep, 10

;     ; Right cursor movement
;     if (x_movement > threshold) {
;         WinClose, A
;     }

;     ; Down cursor movement
;     else if (y_movement > threshold) {
;         WinMinimize, A
;     }

;     ; Up cursor movement
;     else if (y_movement < -threshold) {
;         WinGet, state, MinMax, A
;         if (state = 1) {
;             WinRestore, A
;         }
;         else {
;             WinMaximize, A
;         }
;     }

; Return

;#IfWinNotActive ahk_class Photoshop

; ; Middle button press down event
; LButton & RButton::
;     MouseGetPos, x_start, y_start
; return

; ; Middle button release event
; LButton & RButton Up::
;     ; if tablet mode is on, do nothing
;     if (tabletMode = 1) {
;         return
;     }
;     MouseGetPos, x_current, y_current
;     x_movement := x_current - x_start
;     y_movement := y_current - y_start
;     ; Left cursor movement
;     ;if (x_movement < -threshold) {

;     ;Send, {Alt down}{Tab}{Alt up}
;     ;   Send, {F12}
;     ;}
;     ; Right cursor movement
;     if (x_movement > threshold) {
;         ; select window behind cursor
;         Send, {LButton}
;         Send, {LButton Up}
;         Send, {RButton Up}
;         Sleep, 10
;         WinClose, A
;     }
;     ; Down cursor movementk
;     else if (y_movement > threshold) {
;         Send, {LButton}
;         Send, {LButton Up}
;         Send, {RButton Up}
;         Sleep, 10
;         WinMinimize, A
;     }
;     ; Up cursor movement
;     else if (y_movement < -threshold) {
;         WinGet, state, MinMax, A
;         Send, {LButton}
;         Send, {LButton Up}
;         Send, {RButton Up}
;         Sleep, 10
;         if (state = 1) {
;             WinRestore, A
;         }
;         else {
;             WinMaximize, A
;         }
;     }else{
;         Send, {LButton Up}
;         Send, {RButton Up}
;     }

;     Send, {LButton Up}
;     Send, {RButton Up}
; ; Below threshold cursor movement
; ;else {
; ;    ;Send, {F12}
; ;    Send, #{Tab}
; ;}
; return

; ---------------------------------------------------------------------------------

#IfWinActive
; Always on Top
^+SPACE::
    Send ^#t
Return

; volume control with mousewheel

^!+WheelDown::
    Send, {Volume_Down}
return

^!+WheelUp::
    Send, {Volume_Up}
return

; ---------------------------------------------------------------------------------

NumpadAdd::
    Send, {Enter}
return

^+!F11::
    WinMinimize, A
return

^!+LButton::
    Send, {Media_Prev}
return

^!+RButton::
    Send, {Media_Next}
return

^!+MButton::
    Send, {Media_Play_Pause}
return

$F4::
    Send, ^c
return

$!F4::
    Send, ^x
return

$F5::
    Send, ^v
return

$+Del::
    Send, {Backspace}
return

; Mousewheel key control

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



; Example 1: Adjust volume by scrolling the mouse wheel over the taskbar.
#If MouseIsOver("ahk_class Shell_TrayWnd")
WheelUp::Send {Volume_Up}
WheelDown::Send {Volume_Down}

MouseIsOver(WinTitle) {
    MouseGetPos,,, Win
    return WinExist(WinTitle . " ahk_id " . Win)
}


; Make windows transparent

;Press Alt + T
!T::
togg34:=!togg34
if togg34
 WinSet, Transparent, 200 , A
else
 WinSet, Transparent, OFF , A