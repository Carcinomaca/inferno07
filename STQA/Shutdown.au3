Local $iMinutes = InputBox("Shutdown Timer", "Enter minutes before shutdown:")
If IsNumber($iMinutes) And $iMinutes > 0 Then
    MsgBox(64, "Shutdown Scheduled", "System will shut down in " & $iMinutes & " minutes.")
    Sleep($iMinutes * 60000) ; Convert minutes to milliseconds
    Shutdown(1) ; Shutdown the system
EndIf

