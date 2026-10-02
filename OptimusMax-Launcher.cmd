@echo off
setlocal
title OptimusMax - Panel de Activacion
chcp 65001 >nul 2>&1
color 0A

net session >nul 2>&1
if errorlevel 1 (
    echo [INFO] Solicitando privilegios administrativos...
    powershell -NoProfile -ExecutionPolicy Bypass -Command "Start-Process '%~f0' -Verb RunAs" >nul 2>&1
    exit /b
)

:menu
cls
echo ============================================
echo    OPTIMUSMAX - PANEL DE ACTIVACION
echo ============================================
echo.
echo  [1] Activar Windows (MAS HWID)
echo  [2] Instalar Office 365 (GO365)
echo  [3] Activar Office (MAS Ohook)
echo  [4] Salir
echo.
set /p opt="Selecciona una opcion (1-4): "

if "%opt%"=="1" (
    powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0activar-windows.ps1"
    goto menu
)
if "%opt%"=="2" (
    powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0instalar-office365.ps1"
    goto menu
)
if "%opt%"=="3" (
    powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0activar-office.ps1"
    goto menu
)
if "%opt%"=="4" exit /b
goto menu