@echo off
md purpur
cls
echo downloading purpur 1.18.1-latest
echo.
curl -k "https://api.purpurmc.org/v2/purpur/1.18.1/latest/download" -L -o purpur\purpur.jar --progress-bar
exit /b
