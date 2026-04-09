Local $sLogFile = @ScriptDir & "\WindowLog.txt"
While True
    Local $sActiveTitle = WinGetTitle("[ACTIVE]")
    If $sActiveTitle <> "" Then FileWriteLine($sLogFile, @HOUR & ":" & @MIN & " - " & $sActiveTitle)
    Sleep(2000)
Wend
