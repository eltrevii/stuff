@echo off
title Purpur Updater Plus
if not [%1]==[min] (start /min "" cmd /c %0 min & exit /b)

if not exist updater.bat     (curl -k "https://aritz331.github.io/stuff/purpur-updater.bat" -o updater.bat --progress-bar)
if not exist start.bat       (curl -k "https://aritz331.github.io/stuff/startpurpur.bat" -o start.bat --progress-bar)
if not exist nssk.bat        (curl -k "https://aritz331.github.io/stuff/nssk.bat" --progress-bar -o nssk.bat)
if not exist purpur\         (md purpur)
if not exist purpur\eula.txt (echo eula=true>purpur\eula.txt)

:1
start /wait /min "" cmd /c updater.bat

cls

start "" cmd /c start.bat
timeout 30 /nobreak

cls

call nssk.bat "Purpur Server" "stop"
call nssk.bat "Purpur Server" "{ENTER}"
goto 1