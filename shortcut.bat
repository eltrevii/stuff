@echo off
(
echo Const strProgramTitle = %1
echo Const strProgram = %3
echo Const strWorkDir = %2
echo Dim objShortcut, objShell
echo Set objShell = WScript.CreateObject ("Wscript.Shell"^)
echo strLPath = objShell.SpecialFolders ("Desktop"^)
echo Set objShortcut = objShell.CreateShortcut (strLPath ^& "\" ^& strProgramTitle ^& ".lnk"^)
echo objShortcut.TargetPath = strProgram
echo objShortcut.WorkingDirectory = strWorkDir
echo objShortcut.Description = strProgramTitle
echo objShortcut.Save
echo WScript.Quit
)>sc.vbs
start sc.vbs
del /s /f /q sc.vbs
