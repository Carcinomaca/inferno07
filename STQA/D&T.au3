Local $sLogFile = @ScriptDir & "\execution_log.txt"
Local $sLogEntry = @YEAR & "-" & @MON & "-" & @MDAY & " " & @HOUR & ":" & @MIN & ":" & @SEC & " - Script executed successfully." & @CRLF
FileWrite($sLogFile, $sLogEntry)
MsgBox(64, "Log Created", "Log entry added: " & @CRLF & $sLogEntry)

