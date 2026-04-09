#include <File.au3> ; Required for _FileListToArray()
Local $sTemp = @TempDir ; System temporary folder
Local $iDeleted = 0
Local $aFiles = _FileListToArray($sTemp, "*", 1) ; List files only
If @error Then
    MsgBox(16, "Error", "Failed to list files in the temp folder.")
    Exit
EndIf
For $i = 1 To $aFiles[0]
    If FileDelete($sTemp & "\" & $aFiles[$i]) Then $iDeleted += 1
Next
MsgBox(64, "Cleanup Complete", $iDeleted & " files deleted.")
