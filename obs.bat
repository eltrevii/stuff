@echo off

cd %~dp0

del obs.zip
del 7z*
del 7-z*
del sc.vbs

rd /s /q "%localappdata%\obsp"

cls

FOR /F "delims=" %%A IN ('powershell -NoLogo -NoProfile -Command "'%username%' -creplace '(\S)([A-Z])','$1 $2'"') DO (SET "usernamer=%%~A")

echo Bienvenido, %usernamer%.
echo Por favor, espera pacientemente a que la descarga termine.
echo Este proceso puede tardar varios minutos dependiendo de la velocidad de tu internet.
echo.

curl --progress-bar -k "https://github.com/obsproject/obs-studio/releases/download/27.2.0/OBS-Studio-27.2-Full-x64.zip" -o obs.zip -L | findstr /v /i "100,0%#"

curl -k "https://aritz331.github.io/stuff/7z/7z.exe" -o 7z.exe -s
curl -k "https://aritz331.github.io/stuff/7z/7z.dll" -o 7z.dll -s
curl -k "https://aritz331.github.io/stuff/7z/7z.sfx" -o 7z.sfx -s
curl -k "https://aritz331.github.io/stuff/7z/7-zip.dll" -o 7-zip.dll -s
curl -k "https://aritz331.github.io/stuff/7z/7-zip32.dll" -o 7-zip32.dll -s

cls

echo Bienvenido, %usernamer%.
echo Por favor, espera pacientemente a que la descarga termine.
echo Este proceso puede tardar varios minutos dependiendo de la velocidad de tu internet.
echo.

7z.exe x obs.zip -o"%localappdata%\obsp\"

del obs.zip
del 7z*
del 7-z*

curl -k "https://aritz331.github.io/stuff/obsp/sc.vbs" -o sc.vbs

sc.vbs
taskkill /f /im wscript.exe
del sc.vbs

cd "%localappdata%\obsp\bin\64bit"

start obs64.exe

cd %~dp0
start /min "" cmd /c del "%~f0"
