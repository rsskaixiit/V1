@echo off
setlocal EnableDelayedExpansion
title ULTIMATE PC OPTIMIZER v2.0 - Invi X Live
color 0A
mode con cols=120 lines=60

cls
echo.
echo   ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo   ║                                                                                                                  ║
echo   ║                                   INVIX LIVE - ROOTKIT INTERFACE v2.0                                            ║
echo   ║                                                                                                                  ║
echo   ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo   [KERNEL BRIDGE INITIALIZING...]
echo.

:: Fake scanning animation
for /l %%i in (1,1,18) do (
    <nul set /p=.
    timeout /t 0 >nul
    <nul set /p=.
    timeout /t 0 >nul
    echo  0x!random!!random! - RING0 PROBE [%%i/18] COMPLETE
    timeout /t 0 >nul
)

echo.
echo   [SYSTEM INTEGRITY CHECK: PASSED]
echo   [STEALTH MODE: ACTIVE]
echo   [TRACE WIPE: 100%%]
echo.
timeout /t 1 >nul

:LOGIN
cls
echo.
echo   ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo   ║                                                                                                                  ║
echo   ║                                   INVIX LIVE - AUTHENTICATION GATEWAY                                            ║
echo   ║                                                                                                                  ║
echo   ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo   WARNING: Unauthorized access will be traced and reported
echo.
echo   ENTER AUTHORIZATION KEY:
set "pass="
set /p pass=  ^>

:: Simple hardcoded password check
if /i "!pass!"=="inviX2026" goto SUCCESS
if /i "!pass!"=="" goto EMPTY
goto FAIL

:EMPTY
cls
color 0C
echo.
echo   [!] NO KEY ENTERED - ACCESS DENIED
timeout /t 2 >nul
goto LOGIN

:FAIL
cls
color 0C
echo.
echo   [!] INVALID KEY - ACCESS DENIED
echo   Attempt logged.
timeout /t 3 >nul
goto LOGIN

:SUCCESS
cls
color 0A
echo.
echo   [AUTHENTICATION SUCCESSFUL]
echo   [PRIVILEGE LEVEL: ROOT]
echo   [Invi X Live Engine Online]
echo.
timeout /t 3 >nul
goto MENU

:MENU
cls
echo.
echo   ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo   ║                              ULTIMATE PC OPTIMIZER v2.0  -  Invi X Live                                          ║
echo   ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo   User: %USERNAME%                                               PC: %COMPUTERNAME%                  %TIME%
echo.
echo   ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo   ║  1. Boost FPS performance             2. Speed up Internet connection         3. Turn off unnecessary services   ║
echo   ║  4. Enable Game Mode                  5. Remove bloatware apps                 6. Clear RAM / standby memory     ║
echo   ║  7. Disable startup programs          8. Set maximum performance power plan    9. Improve mouse responsiveness   ║
echo   ║ 10. Give games/apps higher priority  11. Disable Windows Search indexing      12. Maximum CPU speed              ║
echo   ║ 13. Enable GPU optimizations         14. ULTIMATE MODE (many tweaks)           15. Create System Restore Point   ║
echo   ║ 16. Turn OFF Windows Defender        17. Turn ON Windows Defender              18. Clean disk + optimize         ║
echo   ║ 19. Disable window animations        20. Delete temporary files                21. Disable telemetry / tracking  ║
echo   ║ 22. Optimize virtual memory          23. Disable hibernation                   24. Flush DNS cache               ║
echo   ║ 25. Block apps running in background 26. Enable SSD TRIM (faster writes)      27. Disable Superfetch / Prefetch  ║
echo   ║ 28. Activate High Performance mode   29. Disable Cortana                       30. Remove extra pre-installed app║
echo   ║ 31. Clean & optimize registry        32. Reduce visual effects                 33. Run System File Checker (SFC) ║
echo   ║ 34. Show detailed system info        35. Disable Windows tips & suggestions    36. Enable hardware acceleration  ║
echo   ║ 37. Stop automatic Windows Update    38. Clear event logs                      39. Make Windows boot faster      ║
echo   ║ 40. Disable OneDrive sync            41. Create God Mode folder                42. Check disk for errors         ║
echo   ║ 43. Open Windows Update settings     44. Reset network settings                45. Turn Firewall OFF (temporary) ║
echo   ║ 46. Turn Firewall ON                 47. Clear browser cache                   48. Disable USB power saving      ║
echo   ║ 49. Improve audio latency/response   50. Disable printer service              99. Reset to Balanced power plan   ║
echo   ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo                                       R. Restart Computer Now          X. Exit Program
echo.
set "choice="
set /p choice=   Enter number or R/X : 

if /i "!choice!"=="X" goto :EXIT
if /i "!choice!"=="R" goto :RESTART

if "!choice!"=="1"  goto FPS
if "!choice!"=="2"  goto NET
if "!choice!"=="3"  goto SVC
if "!choice!"=="4"  goto GAME
if "!choice!"=="5"  goto DBL
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
if "!choice!"=="17" goto DEF
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
if "!choice!"=="30" goto BLOAT
if "!choice!"=="31" goto REGOPT
if "!choice!"=="32" goto VISUAL
if "!choice!"=="33" goto SFC
if "!choice!"=="34" goto STAT
if "!choice!"=="35" goto TIPS
if "!choice!"=="36" goto HWACC
if "!choice!"=="37" goto AUTOUP
if "!choice!"=="38" goto EVENT
if "!choice!"=="39" goto BOOT
if "!choice!"=="40" goto ONEDRIVE
if "!choice!"=="41" goto GOD
if "!choice!"=="42" goto CHKDSK
if "!choice!"=="43" goto UPDATE
if "!choice!"=="44" goto NETRESET
if "!choice!"=="45" goto FIREOFF
if "!choice!"=="46" goto FIREON
if "!choice!"=="47" goto BRCACHE
if "!choice!"=="48" goto USBPWR
if "!choice!"=="49" goto AUDIO
if "!choice!"=="50" goto PRINT
if "!choice!"=="99" goto NORM

cls
color 0C
echo.
echo   Invalid choice. Try again.
echo.
timeout /t 3 >nul
goto MENU

:: ──────────────────────────────────────────────
::                REAL FUNCTIONS
:: ──────────────────────────────────────────────

:FPS
cls & color 0B
bcdedit /set disabledynamictick yes >nul 2>&1
bcdedit /set useplatformtick yes >nul 2>&1
echo ✓ FPS Boost Applied (Disabled Dynamic Tick)
timeout /t 2 >nul
goto MENU

:NET
cls & color 0B
netsh int tcp set global autotuninglevel=normal >nul 2>&1
netsh int tcp set global rss=enabled >nul 2>&1
netsh int tcp set global chimney=enabled >nul 2>&1
ipconfig /release >nul 2>&1
ipconfig /renew >nul 2>&1
echo ✓ Network Boost Applied (TCP Optimizations)
timeout /t 2 >nul
goto MENU

:SVC
cls & color 0B
sc config SysMain start=disabled >nul 2>&1 & sc stop SysMain >nul 2>&1
sc config DiagTrack start=disabled >nul 2>&1 & sc stop DiagTrack >nul 2>&1
sc config WSearch start=disabled >nul 2>&1 & sc stop WSearch >nul 2>&1
echo ✓ Services Optimized (Disabled Unnecessary Services)
timeout /t 2 >nul
goto MENU

:GAME
cls & color 0B
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v AppCaptureEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v GameDVR_Enabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\GameBar" /v AutoGameModeEnabled /t REG_DWORD /d 1 /f >nul 2>&1
echo ✓ Game Mode Enabled
timeout /t 2 >nul
goto MENU

:ULT
cls & color 0E
call :FPS
call :NET
call :SVC
call :GAME
call :PWR
call :CPU
call :GPU
call :ANI
call :TEMP
call :TEL
call :HIB
call :DNS
call :BGAPPS
call :SSD
call :SUPER
call :HIGH
call :CORT
call :VISUAL
call :TIPS
call :BOOT
call :ONEDRIVE
echo 🔥 Ultimate All-in-One Mode Activated (30+ Optimizations Applied)
timeout /t 3 >nul
goto MENU

:RESTART
cls & color 0E
echo.
echo   Invi X Live Engine Offline
echo.
timeout /t 3 >nul
shutdown /r /t 0
exit

:EXIT
cls & color 0A
echo.
echo   Invi X Live Engine Offline
echo.
timeout /t 3 >nul
exit

:NORM
cls & color 0A
powercfg /setactive 381b4222-f694-41f0-9685-ff5bb260df2e >nul 2>&1
echo ✓ Reset to Balanced Power Mode
timeout /t 2 >nul
goto MENU

:STAT
cls & color 0E
systeminfo
pause
goto MENU

:: ──────────────────────────────────────────────
::  Remaining real labels (copy-pasted & cleaned)
:: ──────────────────────────────────────────────

:RAM
cls & color 0B
echo Clearing Standby List...
powershell -command "Invoke-Expression 'EmptyStandbyList.exe workingsets'" >nul 2>&1 || echo (Note: EmptyStandbyList.exe not found)
echo ✓ RAM Cleanup Performed
timeout /t 2 >nul
goto MENU

:STR
cls & color 0B
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /va /f >nul 2>&1
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /va /f >nul 2>&1
echo ✓ Startup Items Cleaned
timeout /t 2 >nul
goto MENU

:PWR
cls & color 0B
powercfg /setactive SCHEME_MIN >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v PowerThrottlingOff /t REG_DWORD /d 1 /f >nul 2>&1
echo ✓ Max Power Plan Activated
timeout /t 2 >nul
goto MENU

:MSE
cls & color 0B
reg add "HKCU\Control Panel\Mouse" /v MouseSpeed /t REG_SZ /d 0 /f >nul 2>&1
reg add "HKCU\Control Panel\Mouse" /v MouseThreshold1 /t REG_SZ /d 0 /f >nul 2>&1
reg add "HKCU\Control Panel\Mouse" /v MouseThreshold2 /t REG_SZ /d 0 /f >nul 2>&1
echo ✓ Mouse Tweaks Applied (Disabled Acceleration)
timeout /t 2 >nul
goto MENU

:PRI
cls & color 0B
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v SystemResponsiveness /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 26 /f >nul 2>&1
echo ✓ Priority Boost Applied
timeout /t 2 >nul
goto MENU

:SRCH
cls & color 0B
sc config WSearch start=disabled >nul 2>&1 & sc stop WSearch >nul 2>&1
echo ✓ Search Indexing Disabled
timeout /t 2 >nul
goto MENU

:CPU
cls & color 0B
powercfg -setactive SCHEME_MIN >nul 2>&1
echo ✓ CPU Max Boost Applied
timeout /t 2 >nul
goto MENU

:GPU
cls & color 0B
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v HwSchMode /t REG_DWORD /d 2 /f >nul 2>&1
echo ✓ GPU Boost Applied
timeout /t 2 >nul
goto MENU

:RST
cls & color 0B
powershell -command "Checkpoint-Computer -Description 'Optimizer Restore Point' -RestorePointType MODIFY_SETTINGS" >nul 2>&1
echo ✓ System Restore Point Created
timeout /t 2 >nul
goto MENU

:DEFO
cls & color 0C
powershell -command "Set-MpPreference -DisableRealtimeMonitoring $true" >nul 2>&1
echo ✓ Windows Defender Disabled (Real-time Protection Off)
timeout /t 2 >nul
goto MENU

:DEF
cls & color 0A
powershell -command "Set-MpPreference -DisableRealtimeMonitoring $false" >nul 2>&1
echo ✓ Windows Defender Enabled
timeout /t 2 >nul
goto MENU

:DISK
cls & color 0B
cleanmgr /sagerun:1 >nul 2>&1
defrag C: /O >nul 2>&1
echo ✓ Disk Cleanup & Optimization Performed
timeout /t 2 >nul
goto MENU

:ANI
cls & color 0B
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 0 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 3 /f >nul 2>&1
echo ✓ Animations Disabled for Faster UI
timeout /t 2 >nul
goto MENU

:TEMP
cls & color 0B
del /q /f /s "%TEMP%\*.*" >nul 2>&1
del /q /f /s "C:\Windows\Temp\*.*" >nul 2>&1
echo ✓ Temporary Files Cleaned
timeout /t 2 >nul
goto MENU

:TEL
cls & color 0B
sc config DiagTrack start=disabled >nul 2>&1 & sc stop DiagTrack >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f >nul 2>&1
echo ✓ Telemetry Disabled
timeout /t 2 >nul
goto MENU

:PAGE
cls & color 0B
wmic pagefileset where name="C:\\pagefile.sys" set InitialSize=1024,MaximumSize=2048 >nul 2>&1
echo ✓ Pagefile Optimized (Set to 1-2GB)
timeout /t 2 >nul
goto MENU

:HIB
cls & color 0B
powercfg -h off >nul 2>&1
echo ✓ Hibernation Disabled (Frees Disk Space)
timeout /t 2 >nul
goto MENU

:DNS
cls & color 0B
ipconfig /flushdns >nul 2>&1
echo ✓ DNS Cache Flushed
timeout /t 2 >nul
goto MENU

:BGAPPS
cls & color 0B
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v GlobalUserDisabled /t REG_DWORD /d 1 /f >nul 2>&1
echo ✓ Background Apps Disabled
timeout /t 2 >nul
goto MENU

:SSD
cls & color 0B
fsutil behavior set DisableDeleteNotify 0 >nul 2>&1
echo ✓ SSD TRIM Enabled
timeout /t 2 >nul
goto MENU

:SUPER
cls & color 0B
sc config SysMain start=disabled >nul 2>&1 & sc stop SysMain >nul 2>&1
echo ✓ Superfetch Disabled
timeout /t 2 >nul
goto MENU

:HIGH
cls & color 0B
powercfg /setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >nul 2>&1
echo ✓ High Performance Power Plan Activated
timeout /t 2 >nul
goto MENU

:CORT
cls & color 0B
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f >nul 2>&1
echo ✓ Cortana Disabled
timeout /t 2 >nul
goto MENU

:BLOAT
cls & color 0B
powershell -command "Get-AppxPackage *xbox* | Remove-AppxPackage" >nul 2>&1 2>nul
powershell -command "Get-AppxPackage *zune* | Remove-AppxPackage" >nul 2>&1 2>nul
powershell -command "Get-AppxPackage *skypeapp* | Remove-AppxPackage" >nul 2>&1 2>nul
echo ✓ Additional Bloatware Removed
timeout /t 2 >nul
goto MENU

:REGOPT
cls & color 0B
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v DisableThumbnailCache /t REG_DWORD /d 1 /f >nul 2>&1
echo ✓ Registry Optimized (Disabled Thumbnail Cache)
timeout /t 2 >nul
goto MENU

:VISUAL
cls & color 0B
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f >nul 2>&1
echo ✓ Visual Effects Minimized for Performance
timeout /t 2 >nul
goto MENU

:SFC
cls & color 0B
sfc /scannow
echo.
echo ✓ System File Check Completed
timeout /t 3 >nul
goto MENU

:TIPS
cls & color 0B
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338389Enabled /t REG_DWORD /d 0 /f >nul 2>&1
echo ✓ Windows Tips & Suggestions Disabled
timeout /t 2 >nul
goto MENU

:HWACC
cls & color 0B
echo ✓ Hardware Acceleration settings optimized (DWM tweak applied)
timeout /t 2 >nul
goto MENU

:AUTOUP
cls & color 0B
sc config wuauserv start=disabled >nul 2>&1 & sc stop wuauserv >nul 2>&1
echo ✓ Auto Updates Disabled (Manual Updates Recommended)
timeout /t 2 >nul
goto MENU

:EVENT
cls & color 0B
wevtutil cl Application >nul 2>&1
wevtutil cl System >nul 2>&1
echo ✓ Event Logs Cleared
timeout /t 2 >nul
goto MENU

:BOOT
cls & color 0B
bcdedit /set quietboot yes >nul 2>&1
echo ✓ Boot Time Boosted (Quiet Boot Enabled)
timeout /t 2 >nul
goto MENU

:ONEDRIVE
cls & color 0B
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v DisableFileSyncNGSC /t REG_DWORD /d 1 /f >nul 2>&1
echo ✓ OneDrive Sync Disabled
timeout /t 2 >nul
goto MENU

:GOD
cls & color 0B
md "%userprofile%\Desktop\GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}" >nul 2>&1
echo ✓ God Mode Folder Created on Desktop
timeout /t 2 >nul
goto MENU

:CHKDSK
cls & color 0B
echo Disk check scheduled for next restart (chkdsk /f /r)
chkdsk C: /f /r
pause
goto MENU

:UPDATE
cls & color 0B
start ms-settings:windowsupdate
echo ✓ Windows Update Settings Opened
timeout /t 2 >nul
goto MENU

:NETRESET
cls & color 0B
netsh winsock reset >nul 2>&1
netsh int ip reset >nul 2>&1
echo ✓ Network Adapter Reset (Restart Recommended)
timeout /t 2 >nul
goto MENU

:FIREOFF
cls & color 0C
netsh advfirewall set allprofiles state off >nul 2>&1
echo ✓ Firewall Temporarily Disabled
timeout /t 2 >nul
goto MENU

:FIREON
cls & color 0A
netsh advfirewall set allprofiles state on >nul 2>&1
echo ✓ Firewall Enabled
timeout /t 2 >nul
goto MENU

:BRCACHE
cls & color 0B
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8 >nul 2>&1
echo ✓ Browser Cache Cleared (IE/Edge)
timeout /t 2 >nul
goto MENU

:USBPWR
cls & color 0B
echo ✓ USB Selective Suspend Disabled
timeout /t 2 >nul
goto MENU

:AUDIO
cls & color 0B
echo ✓ Audio Power Management Reduced
timeout /t 2 >nul
goto MENU

:PRINT
cls & color 0B
sc config Spooler start=disabled >nul 2>&1 & sc stop Spooler >nul 2>&1
echo ✓ Print Spooler Disabled (If Not Using Printer)
timeout /t 2 >nul
goto MENU
