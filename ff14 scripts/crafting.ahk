#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

prevFirst := 0
prevSecond := 0
prevTimes := 0

Gui, Add, Text,, Enter first timer.
Gui, Add, Edit, vFirst Number w50, %prevFirst%

Gui, Add, Text,, Enter second timer (0 for n/a).
Gui, Add, Edit, vSecond Number w50, %prevSecond%

Gui, Add, Text,, Enter amount of loops.
Gui, Add, Edit, vTimes Number w50, %prevTimes%

Gui, Add, Text,, Alt-tab back after each craft?
Gui, Add, CheckBox, vTabbing Checked, Enable alt-tabbing

Gui, Add, Button, gStart Default, start
Gui, Add, Button, gCancel, Cancel

Gui, Show, w500 h500, Crafting
return

Start:
Gui, Submit
prevFirst := First
prevSecond := Second
prevTimes := Times

if Tabbing
    Craft(First, Second, Times, True)

else
    Craft(First, Second, Times, False)
return

Cancel:
ExitApp
return

Craft(first, second, times, tabbing) {
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

            if (second == 0) && tabbing {
                Tab()
                Sleep first * 1000 + 3000
            }

            if (second != 0) && tabbing {
                Tab()
                Sleep first * 1000 + 3000

                WinActivate
                Sleep 500

                Send {e}
                Sleep 500
                Tab()
                Sleep second * 1000 + 3000
            }

            if (times == 0) {
                MsgBox,,, Finished., 2
                Gui, Show, w500 h500, Crafting
                break
            }
        }
    }
}

Tab() {
    Send {Ctrl down}{Alt down}{Tab}{Alt up}{Ctrl up}
    Sleep 50

    Send {Enter}
}


!2::Reload
!3::ExitApp