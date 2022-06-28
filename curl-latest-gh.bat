@echo off

set "repo=%1"
set "ext=%2"
for /F delims^=^"^ tokens^=4 %%i in ('curl -s https://api.github.com/repos/%repo%/releases/latest ^| findstr /i "browser_download_url" 2^>nul^|findstr /i "%ext%"') do echo --url %%i
