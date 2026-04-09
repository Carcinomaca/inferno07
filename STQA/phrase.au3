Local $sPhrase = InputBox("Phrase", "Enter text to type:")
Local $iCount = InputBox("Repeat", "How many times?")
For $i = 1 To $iCount
    Send($sPhrase & "{ENTER}")
    Sleep(500)
Next

