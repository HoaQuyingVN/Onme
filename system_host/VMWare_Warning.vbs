Option Explicit
Dim WshShell
Set WshShell = CreateObject("WScript.Shell")

Dim msgBoxTitle
msgBoxTitle = "Onme Desktop Installation Warning"

Dim msgBoxText
msgBoxText = "Info :: Autorun has been enabled for Onme Desktop installation. Click 'OK' to proceed with installation.\nWarning :: You are installing the Onme Desktop, If you not backup your data Please backup to start install"
Dim msgBoxResult
msgBoxResult = MsgBox(msgBoxText, vbExclamation + vbOKCancel, msgBoxTitle)

If msgBoxResult = vbOK Then
    WshShell.Run "setup.exe", 1, True
Else
    WScript.Quit
End If
