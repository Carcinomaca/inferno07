#include <ScreenCapture.au3>
Global $sSaveFolder = @ScriptDir & "\Screenshots"
If Not FileExists($sSaveFolder) Then DirCreate($sSaveFolder)
HotKeySet("{PRINTSCREEN}", "TakeScreenshot")

While True
    Sleep(100)
WEnd
Func TakeScreenshot()
    Local $sTimestamp = @YEAR & @MON & @MDAY & "_" & @HOUR & @MIN & @SEC
    Local $sFilePath = $sSaveFolder & "\Screenshot_" & $sTimestamp & ".jpg"
    _ScreenCapture_Capture($sFilePath)
    TrayTip("Screenshot Taken", "Saved: " & $sFilePath, 3)
EndFunc
