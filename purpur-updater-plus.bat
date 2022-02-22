@echo off
title Purpur Updater Plus
if not exist purpur\eula.txt (echo eula=true>purpur\eula.txt) 
:1
curl -k "https://aritz331.github.io/stuff/purpur-updater.bat" -o updater.bat --progress-bar
start /wait /min "" cmd /c updater.bat
del updater.bat
cls
curl -k "https://aritz331.github.io/stuff/startpurpur.bat" -o start.bat --progress-bar
start /min "" cmd /c start.bat
timeout 30 /nobreak
curl -k "https://aritz331.github.io/stuff/nssk.bat" --progress-bar -o nssk.bat
cls
start /wait /min "" cmd /c nssk.bat "Purpur Server" "stop"
start /wait /min "" cmd /c nssk.bat "Purpur Server" "{ENTER}"
goto 1
