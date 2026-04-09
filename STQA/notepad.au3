#include <GUIConstantsEx.au3>
#include <File.au3>
GUICreate("Simple Notepad", 500, 400)
Local $txtEdit = GUICtrlCreateEdit("", 10, 10, 480, 320, 0x200000) ; Multiline edit box
Local $btnSave = GUICtrlCreateButton("Save", 10, 340, 100, 30)
Local $btnOpen = GUICtrlCreateButton("Open", 120, 340, 100, 30)
Local $btnClear = GUICtrlCreateButton("Clear", 230, 340, 100, 30)
Local $btnExit = GUICtrlCreateButton("Exit", 340, 340, 100, 30)
GUISetState()
While True
    Switch GUIGetMsg()
        Case $GUI_EVENT_CLOSE
            Exit
        Case $btnSave
            Local $sFilePath = FileSaveDialog("Save File", @DesktopDir, "Text Files (*.txt)", 2)
            If Not @error Then FileWrite($sFilePath, GUICtrlRead($txtEdit))
        Case $btnOpen
            Local $sFilePath = FileOpenDialog("Open File", @DesktopDir, "Text Files (*.txt)")
            If Not @error Then GUICtrlSetData($txtEdit, FileRead($sFilePath))
        Case $btnClear
            GUICtrlSetData($txtEdit, "")
        Case $btnExit
            Exit
    EndSwitch
Wend
