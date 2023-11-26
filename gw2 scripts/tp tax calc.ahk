#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

title := "TP Profit Calculator"

Gui, Add, Text,, Buy price:
Gui, Add, Edit, w100 vbuyPrice xm
Gui, Add, Text, xm, Sell price:
Gui, Add, Edit, w100 vsellPrice xm
Gui, Add, Text, xm, Amount:
Gui, Add, Edit, w30 vnum Number xm, 1
Gui, Add, Button, Default w30, OK
Gui, Add, Button, w50 x+m, Cancel
Gui, Show, AutoSize, %title%
Gui -SysMenu
Gui, Color,, Silver
return

ButtonCancel:
ExitApp

ButtonOK:
Gui, Submit, NoHide
saleAfterTaxes := sellPrice - sellPrice * 0.15
spread := Round(((saleAfterTaxes - buyPrice) * num), 4)
profit := Round((saleAfterTaxes - buyPrice) / buyPrice * 100)

MsgBox, 1, %title%, Net profit: %spread%g`n`Profit Margin: %profit%`%
IfMsgBox Cancel
    ExitApp
Reload