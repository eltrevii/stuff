rem @echo off
if not [%1]==[min] (start /min "" cmd /c %~pnx0 min & exit)
if not exist wtee.exe (start /wait /min "" cmd /c curl -kLOs aritz331.tk/stuff/wtee.exe)
for %%i in (dl1.bat dl2.bat mcp.bat) do (
  if not exist "%%i" (
    start /min "" cmd /c curl -kLO "aritz331.tk/mc2/%%i"
  )
)

del /s /f /q arit*.log
del /s /f /q arit*.bat

(
echo ^<---  MINECRAFT PORTABLE LOGS  ---^>
echo ^<---        BY ARITZ331        ---^>
echo ^<-https://github.com/aritz331/mc2-^>
)>> aritLOG1.log

(
echo ^<---       DOWNLOAD LOG:       ---^>
echo ^<---      MINECRAFT FILES      ---^>
)>> aritLOG2.log

(
echo ^<---       DOWNLOAD LOG:       ---^>
echo ^<---         JAVA   FILES      ---^>
)>> aritLOG3.log

rem :: --------------------------------------------------------- ::
(
  echo @echo off
  echo mode 64,13
  echo echo   __  __  ____   ____   ___  ____ _____  _    ____  _     _____ 
  echo echo  ^^^|  \/  ^^^|/ ___^^^| ^^^|  _ \ / _ \^^^|  _ \_   _^^^|/ \  ^^^| __ ^^^)^^^| ^^^|   ^^^| ____^^^|
  echo echo  ^^^| ^^^|\/^^^| ^^^| ^^^|     ^^^| ^^^|_^^^) ^^^| ^^^| ^^^| ^^^| ^^^|_^^^) ^^^|^^^| ^^^| / _ \ ^^^|  _ \^^^| ^^^|   ^^^|  _^^^|  
  echo echo  ^^^| ^^^|  ^^^| ^^^| ^^^|___  ^^^|  __/^^^| ^^^|_^^^| ^^^|  _ ^^^< ^^^| ^^^|/ ___ \^^^| ^^^|_^^^) ^^^| ^^^|___^^^| ^^^|___ 
  echo echo  ^^^|_^^^|  ^^^|_^^^|\____^^^| ^^^|_^^^|    \___/^^^|_^^^| \_\^^^|_/_/   \_\____/^^^|_____^^^|_____^^^|
  echo echo   _                _         _ _       __________ _             
  echo echo  ^^^| ^^^|__  _   _     / \   _ __^^^(_^^^) ^^^|_ ___^^^|___ /___ // ^^^|            
  echo echo  ^^^| '_ \^^^| ^^^| ^^^| ^^^|   / _ \ ^^^| '__^^^| ^^^| __^^^|_  / ^^^|_ \ ^^^|_ \^^^| ^^^|            
  echo echo  ^^^| ^^^|_^^^) ^^^| ^^^|_^^^| ^^^|  / ___ \^^^| ^^^|  ^^^| ^^^| ^^^|_ / / ___^^^) ^^^|__^^^) ^^^| ^^^|            
  echo echo  ^^^|_.__/ \__, ^^^| /_/   \_\_^^^|  ^^^|_^^^|\__/___^^^|____/____/^^^|_^^^|____        
  echo echo         ^^^|___/                                     ^^^|_____^^^|       
  echo echo.
  echo ^<nul set /p "=https://github.com/aritz331/mc2"
  echo ping localhost -n 4 ^>nul
)>>aritSTART.bat
rem :: --------------------------------------------------------- ::
start "start" cmd /c aritSTART.bat
timeout /nobreak 3 >nul
rem for /f "tokens=2 delims=," %%a in ('
rem     tasklist /fi "imagename eq cmd.exe" /v /fo:csv /nh
rem     ^| findstr /r /c:".*start[^,]*$"
rem ') do taskkill /f /pid %%a
del /s /f /q aritSTART.bat
rem :: --------------------------------------------------------- ::
timeout 1 /nobreak >nul
:mcp
if not exist mcp.bat (goto mcp) else (start "" cmd /c mcp.bat)