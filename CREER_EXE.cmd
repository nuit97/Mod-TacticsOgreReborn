@echo off
setlocal
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0CREER_EXE.ps1"
set "CODE=%ERRORLEVEL%"
echo.
pause
exit /b %CODE%
