#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>

Global $exp = ""
; Create GUI Window
$gui = GUICreate("Calculator", 250, 320)
; Display input
$display = GUICtrlCreateInput("", 20, 20, 210, 30)
; Buttons
$btn7 = GUICtrlCreateButton("7", 20, 70, 40, 40)
$btn8 = GUICtrlCreateButton("8", 70, 70, 40, 40)
$btn9 = GUICtrlCreateButton("9", 120, 70, 40, 40)
$btnDiv = GUICtrlCreateButton("/", 170, 70, 40, 40)
$btn4 = GUICtrlCreateButton("4", 20, 120, 40, 40)
$btn5 = GUICtrlCreateButton("5", 70, 120, 40, 40)
$btn6 = GUICtrlCreateButton("6", 120, 120, 40, 40)
$btnMul = GUICtrlCreateButton("*", 170, 120, 40, 40)
$btn1 = GUICtrlCreateButton("1", 20, 170, 40, 40)
$btn2 = GUICtrlCreateButton("2", 70, 170, 40, 40)
$btn3 = GUICtrlCreateButton("3", 120, 170, 40, 40)
$btnSub = GUICtrlCreateButton("-", 170, 170, 40, 40)
$btn0 = GUICtrlCreateButton("0", 20, 220, 40, 40)
$btnClr = GUICtrlCreateButton("C", 70, 220, 40, 40)
$btnEq = GUICtrlCreateButton("=", 120, 220, 40, 40)
$btnAdd = GUICtrlCreateButton("+", 170, 220, 40, 40)
GUISetState()
While 1
    $msg = GUIGetMsg()
    Switch $msg
        Case $GUI_EVENT_CLOSE
            Exit
        ; Numbers
        Case $btn0
            Add("0")
        Case $btn1
            Add("1")
        Case $btn2
            Add("2")
        Case $btn3
            Add("3")
        Case $btn4
            Add("4")
        Case $btn5
            Add("5")
        Case $btn6
            Add("6")
        Case $btn7
            Add("7")
        Case $btn8
            Add("8")
        Case $btn9
            Add("9")
        ; Operators
        Case $btnAdd
            Add("+")
        Case $btnSub
            Add("-")
        Case $btnMul
            Add("*")
        Case $btnDiv
            Add("/")
        ; Clear
        Case $btnClr
            $exp = ""
            GUICtrlSetData($display, "")
        ; Equals
        Case $btnEq
            $result = Execute($exp)
            GUICtrlSetData($display, $result)
            $exp = $result
    EndSwitch
WEnd
Func Add($value)
    $exp &= $value
    GUICtrlSetData($display, $exp)
EndFunc

