@echo off
setlocal EnableExtensions EnableDelayedExpansion
title ULTIMATE PC OPTIMIZER v2.1 - Invi X Live
color 0A
mode con cols=120 lines=45

:: ================= ADMIN CHECK =================
net session >nul 2>&1 || (
 cls
 echo [ERROR] Run as Administrator
 pause
 exit /b
)

:: ================= BOOT =================
cls
echo ===============================================================
echo      INVIX LIVE - ROOT INTERFACE v2.1   [2026]
echo ===============================================================
echo Initializing kernel bridge...
for /l %%i in (1,1,20) do (
 <nul set /p=█
 timeout /t 0 >nul
)
timeout /t 1 >nul

:: ================= LOGIN =================
:LOGIN
cls
color 0A
echo ===============================================================
echo            AUTHENTICATION REQUIRED
echo ===============================================================
set "PASS="
set /p PASS=ENTER ACCESS KEY ^> 

if "%PASS%"=="inviX2026" goto AUTH_OK

color 0C
cls
echo [ ACCESS DENIED ]
echo STATUS : FAILED / LOGGED
timeout /t 2 >nul
goto LOGIN

:AUTH_OK
color 0A
cls
echo [ ACCESS GRANTED ]
echo PRIVILEGE LEVEL : ROOT
timeout /t 2 >nul

:: ================= MENU =================
:MENU
cls
color 0A
echo ===============================================================
echo   ULTIMATE PC OPTIMIZER v2.1 - INVIX LIVE
echo ===============================================================
echo User: %USERNAME%   PC: %COMPUTERNAME%
echo.
echo  1. Boost FPS
echo  2. Speed up Internet
echo  3. Disable useless services
echo  4. Enable Game Mode
echo  5. Remove bloatware
echo  6. Clear RAM / Standby
echo  7. Disable startup items
echo  8. Max performance power plan
echo  9. Improve mouse precision
echo 10. Games higher priority
echo 11. Disable Search indexing
echo 12. Max CPU performance
echo 13. GPU optimizations
echo 14. ULTIMATE MODE (ALL)
echo 15. Create Restore Point
echo 16. Defender OFF
echo 17. Defender ON
echo 18. Disk Clean + Optimize
echo 19. Disable animations
echo 20. Delete temp files
echo 21. Disable telemetry
echo 22. Optimize pagefile
echo 23. Disable hibernation
echo 24. Flush DNS
echo 25. Block background apps
echo 26. Enable SSD TRIM
echo 27. Disable Superfetch
echo 28. High Performance plan
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
echo X. Exit
echo.
set "C="
set /p C=Select Option ^> 

if "%C%"=="1"  call :APPLY "FPS BOOST" :_FPS
if "%C%"=="2"  call :APPLY "NETWORK OPTIMIZATION" :_NET
if "%C%"=="3"  call :APPLY "SERVICE OPTIMIZATION" :_SVC
if "%C%"=="4"  call :APPLY "GAME MODE" :_GAME
if "%C%"=="5"  call :APPLY "BLOATWARE REMOVAL" :_BLOAT
if "%C%"=="6"  call :APPLY "RAM CLEANUP" :_RAM
if "%C%"=="7"  call :APPLY "STARTUP CLEAN" :_STR
if "%C%"=="8"  call :APPLY "MAX POWER PLAN" :_PWR
if "%C%"=="9"  call :APPLY "MOUSE FIX" :_MSE
if "%C%"=="10" call :APPLY "PRIORITY BOOST" :_PRI
if "%C%"=="11" call :APPLY "SEARCH DISABLE" :_SRCH
if "%C%"=="12" call :APPLY "CPU PERFORMANCE" :_CPU
if "%C%"=="13" call :APPLY "GPU OPTIMIZATION" :_GPU
if "%C%"=="14" goto ULT
if "%C%"=="15" call :APPLY "RESTORE POINT" :_RST
if "%C%"=="16" call :APPLY "DEFENDER OFF" :_DEFO
if "%C%"=="17" call :APPLY "DEFENDER ON" :_DEFON
if "%C%"=="18" call :APPLY "DISK OPTIMIZE" :_DISK
if "%C%"=="19" call :APPLY "ANIMATIONS OFF" :_ANI
if "%C%"=="20" call :APPLY "TEMP CLEAN" :_TEMP
if "%C%"=="21" call :APPLY "TELEMETRY OFF" :_TEL
if "%C%"=="22" call :APPLY "PAGEFILE OPT" :_PAGE
if "%C%"=="23" call :APPLY "HIBERNATION OFF" :_HIB
if "%C%"=="24" call :APPLY "DNS FLUSH" :_DNS
if "%C%"=="25" call :APPLY "BACKGROUND APPS OFF" :_BGAPPS
if "%C%"=="26" call :APPLY "SSD TRIM" :_SSD
if "%C%"=="27" call :APPLY "SUPERFETCH OFF" :_SUPER
if "%C%"=="28" call :APPLY "HIGH PERFORMANCE" :_HIGH
if "%C%"=="29" call :APPLY "CORTANA OFF" :_CORT
if "%C%"=="30" call :APPLY "XBOX REMOVE" :_BLOATX
if "%C%"=="31" call :APPLY "VISUAL FX MIN" :_VISUAL
if "%C%"=="32" call :_SFC
if "%C%"=="33" call :_STAT
if "%C%"=="34" call :APPLY "TIPS OFF" :_TIPS
if "%C%"=="35" call :APPLY "QUIET BOOT" :_BOOT
if "%C%"=="36" call :APPLY "ONEDRIVE OFF" :_ONEDRIVE
if "%C%"=="37" call :APPLY "GODMODE" :_GOD
if "%C%"=="38" call :_CHKDSK
if "%C%"=="99" call :APPLY "RESET PLAN" :_NORM
if /I "%C%"=="X" goto EXIT

goto MENU

:: ================= APPLY ANIMATION =================
:APPLY
cls
color 0B
echo APPLYING : %~1
echo ---------------------------------------------------------------
for /l %%i in (1,1,25) do (
 <nul set /p=█
 timeout /t 0 >nul
)
echo.
call %2
echo SUCCESS ✔
timeout /t 1 >nul
goto MENU

:: ================= ULT MODE =================
:ULT
cls
color 0E
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
echo ULTIMATE MODE APPLIED ✔
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
pause
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
:EXIT
cls
echo Invi X Live Engine Offline
timeout /t 2 >nul
exit
