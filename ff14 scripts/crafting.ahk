#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

first := 38
second := 0
times := 1

!1::
if WinExist("FINAL FANTASY XIV") {
    loop {
        MsgBox,,, Loop %times%, 2
        WinActivate
        Sleep 1100
        times := times - 1
        
        Send {sc029}
        Sleep 500

        Send {sc029}
        Sleep 500

        Send {sc029}
        Sleep 2000

        Send {q}
        Sleep 500

        if (second == 0) {
            Send {Ctrl down}{Alt down}{Tab}{Alt up}{Ctrl up}
            Sleep 50

            Send {Enter}
            Sleep first * 1000 + 3000
        }

        if (second != 0) {
            Send {e}
            Sleep second * 1000 + 3000
        }

        if (times == 0) {
            MsgBox,,, Finished.
            break
        }
    }
}
return

!2::Reload
!3::ExitApp