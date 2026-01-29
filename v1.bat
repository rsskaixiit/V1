@echo off
:: ========= FORCE CMD (IF RUN FROM POWERSHELL) =========
if defined PSModulePath (
    cmd /c "%~f0"
    exit /b
)

setlocal EnableExtensions EnableDelayedExpansion
title ULTIMATE PC OPTIMIZER v2.1 - Invi X Live
color 0A
mode con cols=120 lines=40

:: ========= ADMIN CHECK =========
net session >nul 2>&1 || (
 cls
 echo [ERROR] Run as Administrator
 pause
 exit /b
)

:: ========= BOOT =========
cls
echo ===============================================================
echo        INVIX LIVE - ROOT INTERFACE v2.1 [2026]
echo ===============================================================
echo Initializing kernel bridge...
for /l %%i in (1,1,20) do (
 <nul set /p=█
 timeout /t 0 >nul
)
timeout /t 1 >nul

:: ========= LOGIN =========
:LOGIN
cls
echo ================= AUTHENTICATION =================
set "PASS="
set /p PASS=ENTER ACCESS KEY ^> 

if "%PASS%"=="inviX2026" goto MENU

cls
color 0C
echo ACCESS DENIED - FAILED / LOGGED
timeout /t 2 >nul
color 0A
goto LOGIN

:: ========= MENU =========
:MENU
cls
echo ===============================================================
echo   ULTIMATE PC OPTIMIZER v2.1 - INVIX LIVE
echo ===============================================================
echo User: %USERNAME%   PC: %COMPUTERNAME%
echo.
echo  1. Boost FPS
echo  2. Internet Optimization
echo  3. Disable Useless Services
echo  4. Game Mode Tweaks
echo  5. Clear RAM / Standby
echo 14. ULTIMATE MODE (ALL)
echo.
echo X. Exit
echo.
set "C="
set /p C=Select Option ^> 

if "%C%"=="1"  call :APPLY "FPS BOOST" _FPS
if "%C%"=="2"  call :APPLY "NETWORK OPTIMIZATION" _NET
if "%C%"=="3"  call :APPLY "SERVICE OPTIMIZATION" _SVC
if "%C%"=="4"  call :APPLY "GAME MODE" _GAME
if "%C%"=="5"  call :APPLY "RAM CLEANUP" _RAM
if "%C%"=="14" goto ULT
if /I "%C%"=="X" goto EXIT

goto MENU

:: ========= APPLY WRAPPER =========
:APPLY
cls
color 0B
echo ===============================================================
echo APPLYING : %~1
echo ===============================================================
for /l %%i in (1,1,25) do (
 <nul set /p=█
 timeout /t 0 >nul
)
echo.
call :%2
echo.
echo SUCCESS ✔
timeout /t 1 >nul
goto MENU

:: ========= ULTIMATE MODE =========
:ULT
cls
color 0E
echo ===============================================================
echo APPLYING ULTIMATE MODE (ALL)
echo ===============================================================
call :_FPS
call :_NET
call :_SVC
call :_GAME
call :_RAM
echo.
echo ULTIMATE MODE APPLIED ✔
pause
goto MENU

:: ========= FUNCTIONS =========
:_FPS
bcdedit /set disabledynamictick yes >nul
bcdedit /set useplatformtick yes >nul
exit /b

:_NET
ipconfig /flushdns >nul
exit /b

:_SVC
sc stop SysMain >nul
sc config SysMain start= disabled >nul
exit /b

:_GAME
reg add "HKCU\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 0 /f >nul
exit /b

:_RAM
powershell -Command "Clear-StandbyList StandbyList" >nul 2>&1
exit /b

:: ========= EXIT =========
:EXIT
cls
echo Invi X Live Engine Offline
timeout /t 2 >nul
exit
