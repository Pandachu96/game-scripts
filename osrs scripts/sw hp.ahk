#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;716, 491 coord for hp x1
;702, 578 coord for ok

;716, 448 coord for range x1

Numpad1::
Loop {
    MouseMove, 716, 448
    Sleep, 50

    Click
    Sleep, 50

    MouseMove, 702, 578
    Sleep, 50

    Click
    Sleep, 200
}
return

Numpad2::Reload
Numpad3::ExitApp