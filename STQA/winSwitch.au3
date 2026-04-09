Local $sLogFile = @ScriptDir & "\WindowSwitchLog.txt"
Local $sPrevTitle = ""
While True
    Local $sCurrentTitle = WinGetTitle("[ACTIVE]")
    If $sCurrentTitle <> "" And $sCurrentTitle <> $sPrevTitle Then
        FileWriteLine($sLogFile, @MDAY & "/" & @MON & "/" & @YEAR & " " & @HOUR & ":" & @MIN & " - " & $sCurrentTitle)
        $sPrevTitle = $sCurrentTitle
    EndIf
    Sleep(1000)
Wend
