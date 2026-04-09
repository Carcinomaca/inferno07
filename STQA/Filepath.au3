#include <GUIConstantsEx.au3>
GUICreate("File Selector", 400, 150)
Local $btnSelect = GUICtrlCreateButton("Select File", 20, 50, 100, 30)
Local $txtPath = GUICtrlCreateInput("", 140, 50, 220, 30)
GUISetState()
While True
    Switch GUIGetMsg()
        Case $GUI_EVENT_CLOSE
            Exit
        Case $btnSelect
            Local $sFilePath = FileOpenDialog("Select a File", @DesktopDir, "All Files (*.*)")
            If Not @error Then GUICtrlSetData($txtPath, $sFilePath)
    EndSwitch
Wend
