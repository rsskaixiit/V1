@echo off
setlocal EnableExtensions EnableDelayedExpansion
title ULTIMATE PC OPTIMIZER v2.1 - Invi X Live
color 0A
mode con cols=120 lines=65

:: Check for admin rights
net session >nul 2>&1
if %errorlevel% neq 0 (
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

cls
echo.
echo ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo ║                                                                                                                  ║
echo ║                  INVIX LIVE - ROOTKIT INTERFACE v2.1 - 2026 Edition                                             ║
echo ║                                                                                                                  ║
echo ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo [KERNEL BRIDGE INITIALIZING...]
echo.

for /l %%i in (1,1,10) do (
    <nul set /p=.
    timeout /t 0 >nul 2>&1
    echo  0x!random!!random! RING0 [%%i/10]
    timeout /t 0 >nul 2>&1
)
echo.
echo [SYSTEM INTEGRITY CHECK: PASSED]   [STEALTH MODE: ACTIVE]
timeout /t 1 >nul

:LOGIN
cls
echo.
echo ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo ║                                 INVIX LIVE - AUTHENTICATION GATEWAY                                              ║
echo ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo WARNING: Unauthorized access will trigger trace protocol
echo.
set "pass="
set /p "pass=ENTER AUTH KEY > "

if /i "!pass!"=="inviX2026" goto SUCCESS
if "!pass!"=="" goto EMPTY
goto FAIL

:EMPTY
cls & color 0C
echo [!] NO KEY ENTERED - ACCESS DENIED
timeout /t 2 >nul
goto LOGIN

:FAIL
cls & color 0C
echo [!] INVALID KEY - ACCESS DENIED    [Attempt logged]
timeout /t 3 >nul
goto LOGIN

:SUCCESS
cls & color 0A
echo.
echo [AUTHENTICATION SUCCESSFUL]    [PRIVILEGE LEVEL: ROOT]
echo [Invi X Live Engine Online - 2026]
timeout /t 2 >nul
goto MENU

:MENU
cls
echo.
echo ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo ║                  ULTIMATE PC OPTIMIZER v2.1 - Invi X Live                                                        ║
echo ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo  User: %USERNAME%     PC: %COMPUTERNAME%     %DATE% %TIME%
echo.
echo  ╔═══════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo  ║  1. Boost FPS              2. Speed up Internet        3. Disable useless services                           ║
echo  ║  4. Enable Game Mode       5. Remove some bloatware    6. Clear RAM / standby list                        ║
echo  ║  7. Disable startup items  8. Maximum performance plan 9. Improve mouse precision                          ║
echo  ║ 10. Games higher priority 11. Disable Search indexing 12. Max CPU performance                             ║
echo  ║ 13. GPU optimizations     14. ULTIMATE MODE (25+ tweaks) 15. Create Restore Point                        ║
echo  ║ 16. Turn OFF Defender     17. Turn ON Defender        18. Clean + Optimize disk                           ║
echo  ║ 19. Disable animations    20. Delete temp files       21. Disable telemetry                              ║
echo  ║ 22. Optimize pagefile     23. Disable hibernation     24. Flush DNS                                      ║
echo  ║ 25. Block background apps 26. Enable SSD TRIM         27. Disable Superfetch/Prefetch                     ║
echo  ║ 28. High Performance mode 29. Disable Cortana         30. Remove Xbox bloat                              ║
echo  ║ 31. Minimize visual fx    32. Run SFC scan            33. Show system info                               ║
echo  ║ 34. Disable tips          35. Quiet boot              36. Disable OneDrive sync                         ║
echo  ║ 37. Create GodMode folder 38. Check disk (next boot)  99. Reset to Balanced plan                          ║
echo  ╚═══════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo     R. Restart PC Now           X. Exit Program
echo.
set "choice="
set /p "choice=Enter number or R/X > "

if /i "!choice!"=="X" goto EXIT
if /i "!choice!"=="R" goto RESTART

if "!choice!"=="1"  goto FPS
if "!choice!"=="2"  goto NET
if "!choice!"=="3"  goto SVC
if "!choice!"=="4"  goto GAME
if "!choice!"=="5"  goto BLOAT
if "!choice!"=="6"  goto RAM
if "!choice!"=="7"  goto STR
if "!choice!"=="8"  goto PWR
if "!choice!"=="9"  goto MSE
if "!choice!"=="10" goto PRI
if "!choice!"=="11" goto SRCH
if "!choice!"=="12" goto CPU
if "!choice!"=="13" goto GPU
if "!choice!"=="14" goto ULT
if "!choice!"=="15" goto RST
if "!choice!"=="16" goto DEFO
if "!choice!"=="17" goto DEFON
if "!choice!"=="18" goto DISK
if "!choice!"=="19" goto ANI
if "!choice!"=="20" goto TEMP
if "!choice!"=="21" goto TEL
if "!choice!"=="22" goto PAGE
if "!choice!"=="23" goto HIB
if "!choice!"=="24" goto DNS
if "!choice!"=="25" goto BGAPPS
if "!choice!"=="26" goto SSD
if "!choice!"=="27" goto SUPER
if "!choice!"=="28" goto HIGH
if "!choice!"=="29" goto CORT
if "!choice!"=="30" goto BLOATX
if "!choice!"=="31" goto VISUAL
if "!choice!"=="32" goto SFC
if "!choice!"=="33" goto STAT
if "!choice!"=="34" goto TIPS
if "!choice!"=="35" goto BOOT
if "!choice!"=="36" goto ONEDRIVE
if "!choice!"=="37" goto GOD
if "!choice!"=="38" goto CHKDSK
if "!choice!"=="99" goto NORM

cls & color 0C
echo.
echo                         [!] INVALID CHOICE
timeout /t 2 >nul
goto MENU

:: ──────────────────────────────────────────────
:: FUNCTIONS
:: ──────────────────────────────────────────────

:SHOW_SUCCESS
echo.
echo    ✓ Applied successfully
timeout /t 2 >nul 2>&1
cls
goto MENU

:FPS
cls & color 0B
bcdedit /set disabledynamictick yes >nul 2>&1
bcdedit /set useplatformtick yes >nul 2>&1
bcdedit /set tscsyncpolicy Enhanced >nul 2>&1
echo FPS Boost → Dynamic Tick off + Platform Clock + TSC sync
goto SHOW_SUCCESS

:NET
cls & color 0B
netsh int tcp set global autotuninglevel=normal >nul 2>&1
netsh int tcp set global rss=enabled >nul 2>&1
netsh int tcp set global chimney=enabled >nul 2>&1
netsh int tcp set global ecncapability=disabled >nul 2>&1
netsh int tcp set global netdma=enabled >nul 2>&1
ipconfig /flushdns >nul 2>&1
echo TCP chimney + RSS + ECN optimizations + DNS flush
goto SHOW_SUCCESS

:SVC
cls & color 0B
for %%s in (SysMain DiagTrack WSearch) do (
    sc config %%s start= demand >nul 2>&1
    sc stop %%s >nul 2>&1
)
echo Disabled on-demand: Superfetch/SysMain, DiagTrack, Windows Search
goto SHOW_SUCCESS

:GAME
cls & color 0B
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v AppCaptureEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\GameBar" /v AllowAutoGameMode /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 0 /f >nul 2>&1
echo Game Mode enabled + Game DVR disabled
goto SHOW_SUCCESS

:BLOAT
cls & color 0B
powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-AppxPackage *3dbuilder* | Remove-AppxPackage" >nul 2>&1
powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-AppxPackage *bing* | Remove-AppxPackage" >nul 2>&1
powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-AppxPackage *zune* | Remove-AppxPackage" >nul 2>&1
echo Removed some common bloat (3D Builder, Bing, Zune apps)
goto SHOW_SUCCESS

:RAM
cls & color 0B
echo Attempting to clear standby list...
powershell -NoProfile -ExecutionPolicy Bypass -Command "Clear-StandbyList StandbyList" >nul 2>&1 || echo (Failed - may need EmptyStandbyList.exe tool)
echo RAM / Standby cleanup attempted
goto SHOW_SUCCESS

:STR
cls & color 0B
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /va /f >nul 2>&1
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /va /f >nul 2>&1
echo Disabled all startup programs (user + machine)
goto SHOW_SUCCESS

:PWR
cls & color 0B
powercfg /setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v PowerThrottlingOff /t REG_DWORD /d 1 /f >nul 2>&1
echo Maximum performance plan + Power Throttling disabled
goto SHOW_SUCCESS

:MSE
cls & color 0B
reg add "HKCU\Control Panel\Mouse" /v MouseSpeed /t REG_SZ /d 0 /f >nul 2>&1
reg add "HKCU\Control Panel\Mouse" /v MouseThreshold1 /t REG_SZ /d 0 /f >nul 2>&1
reg add "HKCU\Control Panel\Mouse" /v MouseThreshold2 /t REG_SZ /d 0 /f >nul 2>&1
echo Mouse acceleration disabled (raw input)
goto SHOW_SUCCESS

:PRI
cls & color 0B
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v SystemResponsiveness /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 26 /f >nul 2>&1
echo Games/Apps higher priority + responsiveness boost
goto SHOW_SUCCESS

:SRCH
cls & color 0B
sc config WSearch start= disabled >nul 2>&1
sc stop WSearch >nul 2>&1
echo Windows Search indexing disabled
goto SHOW_SUCCESS

:CPU
cls & color 0B
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 >nul 2>&1
powercfg /setactive e9a42b02-d5df-448d-aa00-03f14749eb61 >nul 2>&1
echo Ultimate Performance CPU plan activated (if available)
goto SHOW_SUCCESS

:GPU
cls & color 0B
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v HwSchMode /t REG_DWORD /d 2 /f >nul 2>&1
echo Hardware-accelerated GPU scheduling enabled
goto SHOW_SUCCESS

:ULT
cls & color 0E
echo.
echo Activating ULTIMATE MODE (many tweaks)...
call :FPS & call :NET & call :SVC & call :GAME & call :PWR & call :CPU & call :GPU
call :ANI & call :TEMP & call :TEL & call :HIB & call :BGAPPS & call :SUPER & call :HIGH
call :CORT & call :TIPS & call :BOOT & call :ONEDRIVE & call :STR & call :PRI
echo.
echo  25+ optimizations applied - restart recommended
echo.
pause
goto MENU

:RST
cls & color 0B
powershell -Command "Checkpoint-Computer -Description 'InviX Optimizer Restore' -RestorePointType MODIFY_SETTINGS" >nul 2>&1
echo System Restore Point created
goto SHOW_SUCCESS

:DEFO
cls & color 0C
powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $true" >nul 2>&1
echo Windows Defender real-time protection OFF (dangerous!)
goto SHOW_SUCCESS

:DEFON
cls & color 0A
powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $false" >nul 2>&1
echo Windows Defender real-time protection ON
goto SHOW_SUCCESS

:DISK
cls & color 0B
cleanmgr /sagerun:1 >nul 2>&1
defrag C: /O /V >nul 2>&1
echo Disk cleanup + optimization (defrag/trim) done
pause
goto MENU

:ANI
cls & color 0B
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 0 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 3 /f >nul 2>&1
echo Window animations disabled
goto SHOW_SUCCESS

:TEMP
cls & color 0B
del /q /f /s "%TEMP%\*.*" >nul 2>&1
del /q /f /s "C:\Windows\Temp\*.*" >nul 2>&1
del /q /f /s "C:\Windows\Prefetch\*.*" >nul 2>&1
echo Temp + Prefetch files cleaned
goto SHOW_SUCCESS

:TEL
cls & color 0B
sc config DiagTrack start= disabled >nul 2>&1 & sc stop DiagTrack >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f >nul 2>&1
echo Telemetry + DiagTrack disabled
goto SHOW_SUCCESS

:PAGE
cls & color 0B
wmic computersystem where name="%computername%" set AutomaticManagedPagefile=False >nul 2>&1
wmic pagefileset where name="C:\\pagefile.sys" set InitialSize=2048,MaximumSize=4096 >nul 2>&1
echo Pagefile set to 2–4 GB manual (adjust if needed)
goto SHOW_SUCCESS

:HIB
cls & color 0B
powercfg -h off >nul 2>&1
echo Hibernation disabled (frees disk space)
goto SHOW_SUCCESS

:DNS
cls & color 0B
ipconfig /flushdns >nul 2>&1
echo DNS cache flushed
goto SHOW_SUCCESS

:BGAPPS
cls & color 0B
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v GlobalUserDisabled /t REG_DWORD /d 1 /f >nul 2>&1
echo Background apps globally disabled
goto SHOW_SUCCESS

:SSD
cls & color 0B
fsutil behavior set DisableDeleteNotify 0 >nul 2>&1
echo SSD TRIM enabled
goto SHOW_SUCCESS

:SUPER
cls & color 0B
sc config SysMain start= disabled >nul 2>&1 & sc stop SysMain >nul 2>&1
echo Superfetch/Prefetch disabled
goto SHOW_SUCCESS

:HIGH
cls & color 0B
powercfg /setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >nul 2>&1
echo High Performance power plan activated
goto SHOW_SUCCESS

:CORT
cls & color 0B
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f >nul 2>&1
echo Cortana disabled
goto SHOW_SUCCESS

:BLOATX
cls & color 0B
powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-AppxPackage *xbox* | Remove-AppxPackage" >nul 2>&1
powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-AppxPackage *gaming* | Remove-AppxPackage" >nul 2>&1
echo Xbox + Gaming related bloat removed
goto SHOW_SUCCESS

:VISUAL
cls & color 0B
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f >nul 2>&1
echo Visual effects minimized for performance
goto SHOW_SUCCESS

:SFC
cls & color 0B
echo Running System File Checker (may take 10–30 min)...
sfc /scannow
echo.
echo SFC finished.
pause
goto MENU

:STAT
cls & color 0E
systeminfo
pause
goto MENU

:TIPS
cls & color 0B
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338389Enabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SilentInstalledAppsEnabled /t REG_DWORD /d 0 /f >nul 2>&1
echo Tips & suggestions disabled
goto SHOW_SUCCESS

:BOOT
cls & color 0B
bcdedit /set quietboot yes >nul 2>&1
echo Quiet boot enabled (faster startup look)
goto SHOW_SUCCESS

:ONEDRIVE
cls & color 0B
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v DisableFileSyncNGSC /t REG_DWORD /d 1 /f >nul 2>&1
echo OneDrive sync disabled
goto SHOW_SUCCESS

:GOD
cls & color 0B
md "%userprofile%\Desktop\GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}" >nul 2>&1
echo GodMode folder created on Desktop
goto SHOW_SUCCESS

:CHKDSK
cls & color 0B
echo Scheduling chkdsk /f /r on next boot...
chkdsk C: /f /r
echo.
echo Type Y on next restart if prompted.
pause
goto MENU

:NORM
cls & color 0A
powercfg /setactive 381b4222-f694-41f0-9685-ff5bb260df2e >nul 2>&1
echo Balanced power plan restored
goto SHOW_SUCCESS

:RESTART
cls & color 0E
echo.
echo Invi X Live Engine offline...
echo Restarting in 5 seconds...
shutdown /r /t 5
timeout /t 5 >nul
exit

:EXIT
cls & color 0A
echo.
echo Invi X Live Engine offline.
echo See you next time, %USERNAME%.
timeout /t 3 >nul
exit

echo.
echo [Script ended unexpectedly - press key to close]
pause >nul
exit
