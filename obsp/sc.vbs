Const strProgramTitle = "OBS Studio"
Const strProgram = "%localappdata%\obsp\bin\64bit\obs64.exe"
Const strWorkDir = "%localappdata%\obsp\bin\64bit"
Dim objShortcut, objShell
Set objShell = WScript.CreateObject ("Wscript.Shell")
strLPath = objShell.SpecialFolders ("Desktop")
Set objShortcut = objShell.CreateShortcut (strLPath & "\" & strProgramTitle & ".lnk")
objShortcut.TargetPath = strProgram
objShortcut.WorkingDirectory = strWorkDir
objShortcut.Description = strProgramTitle
objShortcut.Save
WScript.Quit
