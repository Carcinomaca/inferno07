Local $sFilePath = FileOpenDialog("Select a Text File", @ScriptDir, "Text Files (*.txt)")
If @error Then Exit
Local $sContent = FileRead($sFilePath)
MsgBox(64, "File Content", $sContent)
