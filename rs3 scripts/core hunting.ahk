#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;0x2D2820
;220, 131
Numpad1::
;MouseGetPos, x, y
;PixelGetColor, color, 237, 161
;MsgBox %x%, %y% %color%
Loop {
    PixelSearch, x1, y1, 237, 161, 237, 161, 0x888888
    if !ErrorLevel {
        Sleep, 100
        Click
        Sleep, 1500
    }

;    PixelSearch, x2, y2, 237, 161, 237, 161, 0x2D2820
;    If !ErrorLevel

}
return

Numpad2::Reload
Numpad3::ExitApp