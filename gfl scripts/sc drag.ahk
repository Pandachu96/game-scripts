#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;0x2734DE
Numpad1::
if WinExist("Girls' Frontline - Netease Emulator") {
    WinActivate
    Sleep, 1000
    PostMessage 0x0112, 0xF020,,,
;    PixelGetColor, color, 829, 576
;    if !ErrorLevel and color = 0x2734DE {
;        MsgBox Found
;    ;    Send {Numpad8}
;        Sleep, 100
;    }
;
}

return

Numpad2::Reload
^q::ExitApp