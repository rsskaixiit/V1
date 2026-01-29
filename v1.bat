@echo off
:: ================= FORCE CMD SAFELY =================
if defined PSModulePath cmd /c "%~f0" & exit /b

setlocal EnableExtensions EnableDelayedExpansion
chcp 65001 >nul
title INVIX LIVE - CORE ENGINE v1
color 0A
mode con cols=120 lines=35

:: ================= ADMIN CHECK =================
net session >nul 2>&1
if %errorlevel% neq 0 (
    cls
    color 0C
    echo ======================================================
    echo   [ERROR] ADMINISTRATOR PRIVILEGES REQUIRED
    echo ======================================================
    echo   Right-click PowerShell and choose:
    echo   "Run as Administrator"
    echo ======================================================
    pause
    exit /b
)

:: ================= BOOT SEQUENCE =================
cls
echo ======================================================
echo        INVIX LIVE - CORE ENGINE v1
echo ======================================================
echo Initializing system...
timeout /t 1 >nul
echo Loading modules...
timeout /t 1 >nul
echo Verifying environment...
timeout /t 1 >nul
echo Status : OK
timeout /t 1 >nul

:: ================= AUTH =================
:LOGIN
cls
color 0A
echo ======================================================
echo              AUTHENTICATION GATE
echo ======================================================
set "PASS="
set /p PASS=ENTER ACCESS KEY ^> 

if /I "%PASS%"=="inviX2026" goto AUTH_OK

:: ---- FAIL ----
color 0C
cls
echo [ ACCESS DENIED ]
echo Invalid key. Try again.
timeout /t 2 >nul
goto LOGIN

:: ---- SUCCESS ----
:AUTH_OK
color 0A
cls
echo [ ACCESS GRANTED ]
echo Privilege Level : ADMIN
echo Engine Status  : ONLINE
timeout /t 2 >nul

:: ================= MAIN =================
cls
echo ======================================================
echo            INVIX LIVE ENGINE READY
echo ======================================================
echo User : %USERNAME%
echo PC   : %COMPUTERNAME%
echo ======================================================
echo.
echo Press ENTER to continue...
pause >nul

:: ===== CALL YOUR OPTIMIZER / MODULE HERE =====
:: Example:
:: call InvixLive_Optimizer.bat

goto EXIT_ENGINE

:: ================= EXIT =================
:EXIT_ENGINE
cls
color 0E
echo ======================================================
echo        INVIX LIVE ENGINE SHUTDOWN
echo ======================================================
echo Releasing resources...
timeout /t 1 >nul
echo Session closed safely.
timeout /t 1 >nul
exit
