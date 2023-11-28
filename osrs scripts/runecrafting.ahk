#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn All, StdOut  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Random, rand, 0, 30
Random,, NewSeed
Numpad1::
MouseGetPos, x, y
loop {
    Click
    Sleep, 800 + rand

    MouseMove, x - 70, y
    Sleep, 50 + rand

    Click
    Sleep, 300 + rand

    MouseMove, x, y
    Sleep, 300 + rand
}
return

Numpad2::Reload
Numpad3::ExitApp