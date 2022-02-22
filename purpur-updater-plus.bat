@echo off
curl -k "https://aritz331.github.io/stuff/purpur-updater.bat" -o updater.bat
start /min "" cmd /c java -jar purpur\purpur.jar -Xmx2G