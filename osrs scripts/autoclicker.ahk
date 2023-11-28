#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Random, rand, 0, 25
Random,, NewSeed

Numpad1::
Loop {
    Click
    Sleep, 43 + rand
}

return

Numpad2::Reload
Numpad3::ExitApp