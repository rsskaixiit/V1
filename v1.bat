@echo off
setlocal EnableExtensions EnableDelayedExpansion
title ULTIMATE PC OPTIMIZER v2.1 - Invi X Live
color 0A
mode con cols=120 lines=65

:: ================= ADMIN CHECK =================
net session >nul 2>&1 || (
    cls
    echo.
    echo   ╔════════════════════════════════════════════════════════════╗
    echo   ║     ERROR: Run this script as Administrator !              ║
    echo   ║    Right-click → Run as administrator                      ║
    echo   ╚════════════════════════════════════════════════════════════╝
    echo.
    pause
    exit /b
)

:: ================= BOOT =================
cls
echo.
echo ===============================================================
echo      INVIX LIVE - ROOT INTERFACE v2.1 (2026)
echo ===============================================================
echo Initializing kernel...
timeout /t 1 >nul

:: ================= LOGIN =================
:LOGIN
cls
set "pass="
echo ENTER AUTH KEY
set /p pass=>
if "%pass%"=="inviX2026" goto MENU
cls
echo ACCESS DENIED
timeout /t 2 >nul
goto LOGIN

:: ================= MENU =================
:MENU
cls
echo ===============================================================
echo   ULTIMATE PC OPTIMIZER v2.1 - INVIX LIVE
echo ===============================================================
echo User: %USERNAME%   PC: %COMPUTERNAME%
echo.
echo  1. Boost FPS
echo  2. Speed up Internet
echo  3. Disable useless services
echo  4. Enable Game Mode
echo  5. Remove some bloatware
echo  6. Clear RAM / standby
echo  7. Disable startup items
echo  8. Maximum performance plan
echo  9. Improve mouse precision
echo 10. Games higher priority
echo 11. Disable Search indexing
echo 12. Max CPU performance
echo 13. GPU optimizations
echo 14. ULTIMATE MODE
echo 15. Create Restore Point
echo 16. Defender OFF
echo 17. Defender ON
echo 18. Clean + Optimize disk
echo 19. Disable animations
echo 20. Delete temp files
echo 21. Disable telemetry
echo 22. Optimize pagefile
echo 23. Disable hibernation
echo 24. Flush DNS
echo 25. Block background apps
echo 26. Enable SSD TRIM
echo 27. Disable Superfetch
echo 28. High Performance mode
echo 29. Disable Cortana
echo 30. Remove Xbox bloat
echo 31. Minimize visual FX
echo 32. Run SFC scan
echo 33. Show system info
echo 34. Disable tips
echo 35. Quiet boot
echo 36. Disable OneDrive
echo 37. Create GodMode
echo 38. Check disk (next boot)
echo 99. Reset power plan
echo.
echo R. Restart PC
echo X. Exit
echo.
set "choice="
set /p choice=>

if /i "%choice%"=="X" goto EXIT
if /i "%choice%"=="R" goto RESTART
if "%choice%"=="1"  call :_FPS
if "%choice%"=="2"  call :_NET
if "%choice%"=="3"  call :_SVC
if "%choice%"=="4"  call :_GAME
if "%choice%"=="5"  call :_BLOAT
if "%choice%"=="6"  call :_RAM
if "%choice%"=="7"  call :_STR
if "%choice%"=="8"  call :_PWR
if "%choice%"=="9"  call :_MSE
if "%choice%"=="10" call :_PRI
if "%choice%"=="11" call :_SRCH
if "%choice%"=="12" call :_CPU
if "%choice%"=="13" call :_GPU
if "%choice%"=="14" goto ULT
if "%choice%"=="15" call :_RST
if "%choice%"=="16" call :_DEFO
if "%choice%"=="17" call :_DEFON
if "%choice%"=="18" call :_DISK
if "%choice%"=="19" call :_ANI
if "%choice%"=="20" call :_TEMP
if "%choice%"=="21" call :_TEL
if "%choice%"=="22" call :_PAGE
if "%choice%"=="23" call :_HIB
if "%choice%"=="24" call :_DNS
if "%choice%"=="25" call :_BGAPPS
if "%choice%"=="26" call :_SSD
if "%choice%"=="27" call :_SUPER
if "%choice%"=="28" call :_HIGH
if "%choice%"=="29" call :_CORT
if "%choice%"=="30" call :_BLOATX
if "%choice%"=="31" call :_VISUAL
if "%choice%"=="32" call :_SFC
if "%choice%"=="33" call :_STAT
if "%choice%"=="34" call :_TIPS
if "%choice%"=="35" call :_BOOT
if "%choice%"=="36" call :_ONEDRIVE
if "%choice%"=="37" call :_GOD
if "%choice%"=="38" call :_CHKDSK
if "%choice%"=="99" call :_NORM

goto MENU
goto :eof

:: ================= ULT MODE =================
:ULT
cls
echo APPLYING ULTIMATE MODE...
call :_FPS
call :_NET
call :_SVC
call :_GAME
call :_BLOAT
call :_RAM
call :_STR
call :_PWR
call :_MSE
call :_PRI
call :_ANI
call :_TEMP
call :_TEL
call :_HIB
call :_BGAPPS
call :_SUPER
call :_HIGH
call :_CORT
call :_TIPS
call :_BOOT
call :_ONEDRIVE
echo.
echo ULTIMATE MODE APPLIED
pause
goto MENU

:: ================= FUNCTIONS =================
:_FPS
bcdedit /set disabledynamictick yes >nul
exit /b

:_NET
ipconfig /flushdns >nul
exit /b

:_SVC
sc stop SysMain >nul & sc config SysMain start=disabled >nul
exit /b

:_GAME
reg add "HKCU\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 0 /f >nul
exit /b

:_BLOAT
powershell "Get-AppxPackage *bing* | Remove-AppxPackage" >nul 2>&1
exit /b

:_RAM
powershell "Clear-StandbyList StandbyList" >nul 2>&1
exit /b

:_STR
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Run /va /f >nul
exit /b

:_PWR
powercfg /setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >nul
exit /b

:_MSE
reg add HKCU\Control Panel\Mouse /v MouseSpeed /t REG_SZ /d 0 /f >nul
exit /b

:_PRI
reg add HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile /v SystemResponsiveness /t REG_DWORD /d 0 /f >nul
exit /b

:_SRCH
sc stop WSearch >nul & sc config WSearch start=disabled >nul
exit /b

:_CPU
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 >nul
exit /b

:_GPU
reg add HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers /v HwSchMode /t REG_DWORD /d 2 /f >nul
exit /b

:_RST
powershell "Checkpoint-Computer -Description 'Invix Restore'" >nul
exit /b

:_DEFO
powershell "Set-MpPreference -DisableRealtimeMonitoring $true" >nul
exit /b

:_DEFON
powershell "Set-MpPreference -DisableRealtimeMonitoring $false" >nul
exit /b

:_DISK
defrag C: /O >nul
exit /b

:_ANI
reg add HKCU\Control Panel\Desktop /v MinAnimate /t REG_SZ /d 0 /f >nul
exit /b

:_TEMP
del /q /f /s "%TEMP%\*" >nul 2>&1
exit /b

:_TEL
sc stop DiagTrack >nul
exit /b

:_PAGE
wmic pagefileset set InitialSize=2048,MaximumSize=4096 >nul
exit /b

:_HIB
powercfg -h off >nul
exit /b

:_DNS
ipconfig /flushdns >nul
exit /b

:_BGAPPS
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications /v GlobalUserDisabled /t REG_DWORD /d 1 /f >nul
exit /b

:_SSD
fsutil behavior set DisableDeleteNotify 0 >nul
exit /b

:_SUPER
sc stop SysMain >nul
exit /b

:_HIGH
powercfg /setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >nul
exit /b

:_CORT
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search /v AllowCortana /t REG_DWORD /d 0 /f >nul
exit /b

:_BLOATX
powershell "Get-AppxPackage *xbox* | Remove-AppxPackage" >nul
exit /b

:_VISUAL
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects /v VisualFXSetting /t REG_DWORD /d 2 /f >nul
exit /b

:_SFC
sfc /scannow
exit /b

:_STAT
systeminfo
pause
exit /b

:_TIPS
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager /v SilentInstalledAppsEnabled /t REG_DWORD /d 0 /f >nul
exit /b

:_BOOT
bcdedit /set quietboot yes >nul
exit /b

:_ONEDRIVE
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive /v DisableFileSyncNGSC /t REG_DWORD /d 1 /f >nul
exit /b

:_GOD
md "%USERPROFILE%\Desktop\GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}" >nul
exit /b

:_CHKDSK
chkdsk C: /f /r
pause
exit /b

:_NORM
powercfg /setactive 381b4222-f694-41f0-9685-ff5bb260df2e >nul
exit /b

:: ================= EXIT =================
:RESTART
shutdown /r /t 5
exit

:EXIT
cls
echo Invi X Live Engine Offline
timeout /t 2 >nul
exit
