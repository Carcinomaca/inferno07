#include <File.au3>
Local $sDesktop = @DesktopDir
Local $sShortcutFolder = $sDesktop & "\Shortcuts"
If Not FileExists($sShortcutFolder) Then DirCreate($sShortcutFolder)
Local $aFiles = _FileListToArray($sDesktop, "*.lnk", 1)
If @error Then
    MsgBox(64, "No Shortcuts", "No .lnk files found on the desktop.")
    Exit
EndIf
For $i = 1 To $aFiles[0]
    FileMove($sDesktop & "\" & $aFiles[$i], $sShortcutFolder & "\" & $aFiles[$i], 1)
Next
MsgBox(64, "Move Completed", $aFiles[0] & " shortcut(s) moved to 'Shortcuts' folder.")
