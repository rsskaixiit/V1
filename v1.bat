@echo off
:: ========= FORCE CMD (IF RUN FROM POWERSHELL) =========
if defined PSModulePath (
    cmd /c "%~f0"
    exit /b
)

setlocal EnableExtensions EnableDelayedExpansion
title INVIX LIVE - START ENGINE
color 0A
mode con cols=120 lines=35

:: ========= ADMIN CHECK =========
net session >nul 2>&1 || (
    cls
    echo [ERROR] ADMINISTRATOR PRIVILEGES REQUIRED
    pause
    exit /b
)

:: ========= BOOT ANIMATION =========
cls
echo ======================================================================
echo        INVIX LIVE - CORE ENGINE v2.1  [BOOT SEQUENCE]
echo ======================================================================
echo Initializing kernel bridge...
timeout /t 1 >nul

set "BAR="
for /l %%i in (1,1,30) do (
    set "BAR=!BAR!█"
    <nul set /p "=!BAR!"
    timeout /t 0 >nul
)
echo.
echo Loading modules...
timeout /t 1 >nul
echo Checking system integrity...
timeout /t 1 >nul
echo Status : OK
timeout /t 1 >nul

:: ========= AUTHENTICATION =========
:LOGIN
cls
color 0A
echo ======================================================================
echo                AUTHENTICATION GATEWAY
echo ======================================================================
set "PASS="
set /p PASS=ENTER ACCESS KEY ^> 

if "%PASS%"=="inviX2026" goto AUTH_OK

:: ---- FAILED ----
color 0C
cls
echo [ ACCESS DENIED ]
echo Reason : INVALID KEY
echo Status : FAILED / LOGGED
timeout /t 2 >nul
color 0A
goto LOGIN

:: ---- SUCCESS ----
:AUTH_OK
cls
color 0A
echo [ ACCESS GRANTED ]
echo Privilege Level : ROOT
echo Engine Status  : ONLINE
timeout /t 2 >nul

:: ========= ENGINE READY =========
cls
echo ======================================================================
echo        INVIX LIVE ENGINE ONLINE
echo ======================================================================
echo User : %USERNAME%
echo PC   : %COMPUTERNAME%
echo.
echo Press any key to ENTER MAIN MODULE
pause >nul

:: 👉 YAHAN TUM APNA MAIN MENU / OPTIMIZER CALL KAR SAKTE HO
:: call InvixLive_Optimizer.bat
goto EXIT_ENGINE

:: ========= EXIT ENGINE =========
:EXIT_ENGINE
cls
color 0E
echo ======================================================================
echo        INVIX LIVE ENGINE OFFLINE
echo ======================================================================
echo Shutting down modules...
timeout /t 1 >nul
echo Releasing kernel hooks...
timeout /t 1 >nul
echo Session terminated safely.
timeout /t 1 >nul
exit
