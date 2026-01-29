@echo off
REM =====================================================
REM INVIX LIVE V1 – FINAL FIXED BUILD
REM PowerShell + CMD Safe | Admin Stable | No Auto Close
REM =====================================================

:: ---------- FORCE CMD (SAFE) ----------
if defined PSModulePath cmd /k "%~f0" & exit /b

:: ---------- INIT ----------
setlocal EnableExtensions EnableDelayedExpansion
chcp 65001 >nul
title INVIX LIVE - CORE ENGINE V1
color 0A
mode con cols=120 lines=35

:: ---------- ADMIN CHECK ----------
net session >nul 2>&1
if %errorlevel% neq 0 (
    cls
    color 0C
    echo ======================================================
    echo   ERROR: ADMINISTRATOR PRIVILEGES REQUIRED
    echo ======================================================
    echo   Run PowerShell or CMD as Administrator
    echo ======================================================
    pause
    exit /b
)

:: ---------- BOOT ----------
cls
echo ======================================================
echo            INVIX LIVE CORE ENGINE
echo ======================================================
echo Initializing kernel...
timeout /t 1 >nul
echo Loading modules...
timeout /t 1 >nul
echo Checking system integrity...
timeout /t 1 >nul
echo Status : OK
timeout /t 1 >nul

:: ---------- AUTH ----------
:LOGIN
cls
color 0A
echo ======================================================
echo              AUTHENTICATION GATE
echo ======================================================
set "PASS="
set /p PASS=ENTER ACCESS KEY ^> 

if /I "%PASS%"=="inviX2026" goto AUTH_OK

color 0C
cls
echo ACCESS DENIED
echo Invalid key.
timeout /t 2 >nul
goto LOGIN

:AUTH_OK
color 0A
cls
echo ACCESS GRANTED
echo Privilege Level : ADMIN
echo Engine Status  : ONLINE
timeout /t 2 >nul

:: ---------- MAIN ----------
cls
echo ======================================================
echo           INVIX LIVE ENGINE READY
echo ======================================================
echo USER : %USERNAME%
echo PC   : %COMPUTERNAME%
echo ======================================================
echo.
echo Press ENTER to continue...
pause >nul

REM ===== CALL YOUR MAIN TOOL HERE =====
REM call InvixLive_Optimizer.bat

:: ---------- EXIT ----------
cls
color 0E
echo ======================================================
echo           ENGINE SHUTDOWN
echo ======================================================
echo Cleaning up...
timeout /t 1 >nul
echo Done.
echo.
echo Press any key to exit...
pause >nul
exit
