Local $sFolder = FileSelectFolder("Select a Folder", "")
If $sFolder <> "" Then MsgBox(64, "Folder Size", "Total size: " & DirGetSize($sFolder) / 1024*1024 & " KB")
