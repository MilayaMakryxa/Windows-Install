@echo off
powershell.exe -ExecutionPolicy Bypass -File "%~dp0Installing programs for Windows.ps1" REM %~dp0 указывает на текущую дерикторию скрипта
if %ERRORLEVEL% neq 0 (
    echo "Ошибка выполнения команды"
    exit /b %ERRORLEVEL%
)