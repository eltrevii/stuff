@echo off
echo %1 | findstr /b "dl" && (
  call :%*
  exit /b
)

echo ^> @echo foo bar- i mean off :sweat_smile:
echo.off
echo - wtf
timeout 3 /nobreak
cls

rem call :fol 1
rem call :fol 2

goto dld

:fol
for /f "tokens=*" %%i in ('curl -kLs "aritz331.tk/mc2/fol%1.txt"') do (
  if not exist "%%i\" (md "%%i")
)
exit /b

:dld
start /wait /min "" cmd /c dl1.bat
start /wait /min "" cmd /c dl2.bat

goto cont1

:dl
setlocal enableextensions enabledelayedexpansion
echo dl: downloading... (%1)
for /l %%i in (%2, %3, %4) do (
  for /l %%j in (%2, 1, %4) do (
    if not exist "%%j" (
      if !fn!==0 (set "fn=1")
      if defined fn (
        if [%6]==[] (
          <nul set /p "=Downloading files (%1) !fn!-%%i + %5..." 
        ) else (
          <nul set /p "=Downloading files (%1) !fn!-%%i + %5-%6..."
        ) | wtee -a aritLOG%7.log
        start /min "" cmd /c curl -kLO "aritz331.tk/mc2/%1-[!fn!-%%i].b" --progress-bar && echo. OK! || echo. FAIL | wtee -a aritLOG%7.log
      )
      set "fn=%%i"
      )
    if not [%5]==[] (if [%6]==[] (start /wait /min "" cmd /c curl -kLO "aritz331.tk/mc2/%1-%5.b" --progress-bar) else (start /wait /min "" cmd /c curl -kLO "aritz331.tk/mc2/%1-[%5-%6].b" --progress-bar))

  )
)
  
:cont1
call :move 1 m
call :move 2 j

endlocal
goto mc

:move
start /min /wait "" cmd /c curl -kLOs "aritz331.tk/mc2/folf%1.txt"
<folf%1.txt (
  for /f "tokens=*" %%i in ('dir /b /a-D %2-*.*') do (
    set "fn="
    set /p "fn="
    if defined fn (move "%%i" "!fn!")
  )
)
exit /b

:mc
set "jvp=.\j\bin\javaw.exe" // java path
set "mcp=.\mc" // mc path
set "mcv=fabric-loader-0.14.0-1.18.2" // mc ver.
echo usrnaem:
set /p "usrn=> "

:launch
start /wait "" "%jvp%" -Xmx2G -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M -XX:+IgnoreUnrecognizedVMOptions -Dorg.lwjgl.opengl.Display.allowSoftwareOpenGL=true -XX:HeapDumpPath=MojangTricksIntelDriversForPerformance_javaw.exe_minecraft.exe.heapdump -Djava.library.path=%mcp%\versions\%mcv%\%mcv%-natives-1177346109300 -Dminecraft.launcher.brand=minecraft-launcher -Dminecraft.launcher.version=2.1.5964 -cp %mcp%\libraries\com\mojang\laulib\1.0\laulib-1.0.jar;%mcp%\libraries\net\fabricmc\tiny-mappings-parser\0.3.0+build.17\tiny-mappings-parser-0.3.0+build.17.jar;%mcp%\libraries\net\fabricmc\sponge-mixin\0.11.3+mixin.0.8.5\sponge-mixin-0.11.3+mixin.0.8.5.jar;%mcp%\libraries\net\fabricmc\tiny-remapper\0.8.2\tiny-remapper-0.8.2.jar;%mcp%\libraries\net\fabricmc\access-widener\2.1.0\access-widener-2.1.0.jar;%mcp%\libraries\org\ow2\asm\asm\9.3\asm-9.3.jar;%mcp%\libraries\org\ow2\asm\asm-analysis\9.3\asm-analysis-9.3.jar;%mcp%\libraries\org\ow2\asm\asm-commons\9.3\asm-commons-9.3.jar;%mcp%\libraries\org\ow2\asm\asm-tree\9.3\asm-tree-9.3.jar;%mcp%\libraries\org\ow2\asm\asm-util\9.3\asm-util-9.3.jar;%mcp%\libraries\net\fabricmc\intermediary\1.18.2\intermediary-1.18.2.jar;%mcp%\libraries\net\fabricmc\fabric-loader\0.14.0\fabric-loader-0.14.0.jar;%mcp%\libraries\com\mojang\logging\1.0.0\logging-1.0.0.jar;%mcp%\libraries\com\mojang\blocklist\1.0.10\blocklist-1.0.10.jar;%mcp%\libraries\com\mojang\patchy\2.2.10\patchy-2.2.10.jar;%mcp%\libraries\com\github\oshi\oshi-core\5.8.5\oshi-core-5.8.5.jar;%mcp%\libraries\net\java\dev\jna\jna\5.10.0\jna-5.10.0.jar;%mcp%\libraries\net\java\dev\jna\jna-platform\5.10.0\jna-platform-5.10.0.jar;%mcp%\libraries\org\slf4j\slf4j-api\1.8.0-beta4\slf4j-api-1.8.0-beta4.jar;%mcp%\libraries\org\apache\logging\log4j\log4j-slf4j18-impl\2.17.0\log4j-slf4j18-impl-2.17.0.jar;%mcp%\libraries\com\ibm\icu\icu4j\70.1\icu4j-70.1.jar;%mcp%\libraries\com\mojang\javabridge\1.2.24\javabridge-1.2.24.jar;%mcp%\libraries\net\sf\jopt-simple\jopt-simple\5.0.4\jopt-simple-5.0.4.jar;%mcp%\libraries\io\netty\netty-all\4.1.68.Final\netty-all-4.1.68.Final.jar;%mcp%\libraries\com\google\guava\failureaccess\1.0.1\failureaccess-1.0.1.jar;%mcp%\libraries\com\google\guava\guava\31.0.1-jre\guava-31.0.1-jre.jar;%mcp%\libraries\org\apache\commons\commons-lang3\3.12.0\commons-lang3-3.12.0.jar;%mcp%\libraries\commons-io\commons-io\2.11.0\commons-io-2.11.0.jar;%mcp%\libraries\commons-codec\commons-codec\1.15\commons-codec-1.15.jar;%mcp%\libraries\com\mojang\brigadier\1.0.18\brigadier-1.0.18.jar;%mcp%\libraries\com\mojang\datafixerupper\4.1.27\datafixerupper-4.1.27.jar;%mcp%\libraries\com\google\code\gson\gson\2.8.9\gson-2.8.9.jar;%mcp%\libraries\com\mojang\authlib\3.3.39\authlib-3.3.39.jar;%mcp%\libraries\org\apache\commons\commons-compress\1.21\commons-compress-1.21.jar;%mcp%\libraries\org\apache\httpcomponents\httpclient\4.5.13\httpclient-4.5.13.jar;%mcp%\libraries\commons-logging\commons-logging\1.2\commons-logging-1.2.jar;%mcp%\libraries\org\apache\httpcomponents\httpcore\4.4.14\httpcore-4.4.14.jar;%mcp%\libraries\it\unimi\dsi\fastutil\8.5.6\fastutil-8.5.6.jar;%mcp%\libraries\org\apache\logging\log4j\log4j-api\2.17.0\log4j-api-2.17.0.jar;%mcp%\libraries\org\apache\logging\log4j\log4j-core\2.17.0\log4j-core-2.17.0.jar;%mcp%\libraries\org\lwjgl\lwjgl\3.2.2\lwjgl-3.2.2.jar;%mcp%\libraries\org\lwjgl\lwjgl-jemalloc\3.2.2\lwjgl-jemalloc-3.2.2.jar;%mcp%\libraries\org\lwjgl\lwjgl-openal\3.2.2\lwjgl-openal-3.2.2.jar;%mcp%\libraries\org\lwjgl\lwjgl-opengl\3.2.2\lwjgl-opengl-3.2.2.jar;%mcp%\libraries\org\lwjgl\lwjgl-glfw\3.2.2\lwjgl-glfw-3.2.2.jar;%mcp%\libraries\org\lwjgl\lwjgl-stb\3.2.2\lwjgl-stb-3.2.2.jar;%mcp%\libraries\org\lwjgl\lwjgl-tinyfd\3.2.2\lwjgl-tinyfd-3.2.2.jar;%mcp%\libraries\com\mojang\text2speech\1.12.4\text2speech-1.12.4.jar;%mcp%\versions\%mcv%\%mcv%.jar "-DFabricMcEmu= net.minecraft.client.main.Main " net.fabricmc.loader.impl.launch.knot.KnotClient --username %usrn% --version %mcv% --gameDir %mcp% --assetsDir %mcp%\assets --assetIndex 1.18 --uuid 0004c61756e6468657246656e6978000 --accessToken accessToken --clientId ${clientid} --xuid ${auth_xuid} --userType legacy --versionType release

start /wait /min "" cmd /c comp.cmd
del m-*.b
del j-*.b
exit /b