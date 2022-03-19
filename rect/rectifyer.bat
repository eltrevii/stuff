@echo off

:main
dir /b install.wim || cls & echo install.wim not present. & goto choror
for /f "tokens=*" %%i in ('dir /b *.iso') do 7z d "%%i" "sources\install.wim" || goto error
for /f "tokens=*" %%i in ('dir /b *.iso') do 7z a "%%i" "install.wim" || goto error
for /f "tokens=*" %%i in ('dir /b *.iso') do 7z rn "%%i" "install.wim" "sources\install.wim" || goto error

goto gud

:choror
echo do you want to extract install.wim from other iso
choice /c yn /n /m "y/n> "
if "%errorlevel%"=="1" goto choiso
exit /b

:choiso
echo selec iso (from original window)
echo (u can use tab btw)
echo.
dir/b *.iso
echo.
set /p hmm="> "
cls
7z x "%hmm%" -o".\" "sources\install.wim"
cls
move sources\install.wim .\
rd sources\
cls
goto main
exit /b

:gud
echo successfully done
echo enjoy rectified setup with normal window (11) lol
pause
exit /b

:error
echo.
echo error smth happened dunno wat try again or give up
goto eror

:eror
color 4
echo.
echo smth failed; exiting
pause
color
exit /b
