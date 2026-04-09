HotKeySet("^q", "CloseNotepad")  ; Ctrl+Q closes Notepad
HotKeySet("^s", "ShowMessage")   ; Ctrl+S shows a message
HotKeySet("{ESC}", "ExitScript") ; ESC exits script
While True
    Sleep(100)
WEnd
Func CloseNotepad()
    WinClose("Untitled - Notepad")
EndFunc
Func ShowMessage()
    MsgBox(64, "Hotkey Triggered", "Hello! You pressed Ctrl+S.")
EndFunc
Func ExitScript()
    Exit
EndFunc
