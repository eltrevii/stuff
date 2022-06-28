@echo off
md %temp%\331
pushd %temp%\331

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

curl -kLs "https://aritz331.github.io/stuff/curl-latest-gh.bat" -o gl.bat
set "repo=obsproject/obs-studio"
set "ext=x64.zip"
call gl.bat %repo% %ext% | curl --progress-bar -K - -o obs.zip -L | findstr /v /i "100,0%#"

curl -kLOs "https://aritz331.github.io/stuff/7z/7z.exe"
curl -kLOs "https://aritz331.github.io/stuff/7z/7z.dll"
curl -kLOs "https://aritz331.github.io/stuff/7z/7z.sfx"
curl -kLOs "https://aritz331.github.io/stuff/7z/7-zip.dll"
curl -kLOs "https://aritz331.github.io/stuff/7z/7-zip32.dll"

cls

echo Bienvenido, %usernamer%.
echo Por favor, espera pacientemente a que la descarga termine.
echo Este proceso puede tardar varios minutos dependiendo de la velocidad de tu internet.
echo.

7z.exe x obs.zip -o"%localappdata%\obsp\"

del obs.zip
del 7z*
del 7-z*

curl -kLs "https://aritz331.github.io/stuff/shortcut.bat" -o sc.bat
set "strprt=OBS Studio"
set "strwd=%localappdata%\obsp\bin\64bit"
set "strpr=%strwd%\obs64.exe"
call sc.bat "%strprt%" "%strwd%" "%strpr%"

cd "%localappdata%\obsp\bin\64bit"

start obs64.exe

popd
rd /s %temp%\331
start /min "" cmd /c ping localhost -n 1^>nul^&del "%~f0"
