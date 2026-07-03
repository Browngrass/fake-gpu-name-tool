@echo off
chcp 65001 >nul
for /f %%a in ('echo prompt $E^|cmd') do set "ESC=%%a"
title Fake GPU Name Tool
color 0A

:: Check for admin privileges from the start, request UAC only once
fltmc >nul 2>&1 || (
    powershell -Command "try { Start-Process '%~f0' -Verb RunAs -ErrorAction Stop } catch { exit 1 }"
    if errorlevel 1 (
        echo.
        echo You denied Administrator privileges.
        echo This tool must be run as Administrator to function properly.
        echo.
        pause
    )
    exit /b
)

:MENU
cls
echo =================================================
echo         FAKE GPU NAME TOOL BY BROWNGRASS
echo =================================================
echo.
echo   %ESC%[93m[1] %ESC%[92mHow to get GPU Hardware ID%ESC%[0m
echo   %ESC%[93m[2] %ESC%[92mRun GPU Name Spoofer%ESC%[0m
echo   %ESC%[93m[3] %ESC%[92mExit%ESC%[0m
echo.
echo %ESC%[92m=================================================%ESC%[0m
set /p choice="Select (%ESC%[93m1%ESC%[0m/%ESC%[93m2%ESC%[0m/%ESC%[93m3%ESC%[0m): "

if "%choice%"=="1" goto HUONGDAN
if "%choice%"=="2" goto CHAYFAKE
if "%choice%"=="3" exit /b
goto MENU

:HUONGDAN
cls
echo ================================================
echo                HOW TO GET HARDWARE ID 
echo ================================================
echo.
echo %ESC%[93mMethod 1 - Using PowerShell (No Admin privileges required):%ESC%[0m
echo   Press Windows key, search for PowerShell (or Win + X and choose Terminal on Win 11), then run:
echo   Get-PnpDevice -Class Display ^| Select FriendlyName, InstanceId
echo.
echo   Example output will look like this:
echo   ROOt\DISPLAY\0000
echo   PCI\VEN_1002^&DEV_7340^&SUBSYS_04E61043^&REV_C5\6^&1BFE57C5^&0^&00000008
echo.
echo   The Hardware ID you need to enter is: "%ESC%[32mPCI\VEN_1002^&DEV_7340^&SUBSYS_04E61043^&REV_C5\6^&1BFE57C5^&0^&00000008%ESC%[0m" 
echo   %ESC%[91mIf method 1 doesn't work, try method 2.%ESC%[0m
echo.
echo %ESC%[93mMethod 2 - Using Device Manager:%ESC%[0m
echo   Press Windows key, search for Device Manager (or press Win + X and select Device Manager)
echo   Device Manager -^> Display adapters -^> Right-click your GPU
echo   -^> Properties -^> Details -^> Select "Hardware Ids" from the Property dropdown menu.
echo.
echo   Example output will look like this:
echo   PCI\VEN_1002^&DEV_7340^&SUBSYS_04E61043^&REV_C5
echo   PCI\VEN_1002^&DEV_7340^&SUBSYS_04E61043
echo   PCI\VEN_1002^&DEV_7340^&CC_0300
echo.
echo   Right-click the longest line and select Copy.
echo   %ESC%[91mNOTE%ESC%[0m: If pasting fails, paste the ID into an external editor first
echo   (like Chrome or Notepad), then copy it again and paste it into this tool.
echo.
pause
goto MENU

:CHAYFAKE
cls
echo ================================================
echo                 RUN GPU NAME SPOOFER
echo ================================================
echo.
set /p hwid="Enter Hardware ID: "
set /p fakename="Enter fake GPU name: "

echo.
echo Searching for device matching %hwid% ...
set found=0

for /f "tokens=*" %%a in ('reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum" /s /f "%hwid%" ^| findstr "Control"') do (
    reg add "%%a" /v FriendlyName /t REG_SZ /d "%fakename%" /f >nul 2>&1
    set found=1
)

if "%found%"=="0" (
    echo No device matching this ID was found.
    echo Please double-check your Hardware ID in section [1].
    pause
    goto MENU
)

pnputil /scan-devices >nul 2>&1
echo.
echo %ESC%[93mSuccessfully changed GPU name to: %fakename%%ESC%[0m
echo A system restart might be required for changes to take full effect.
echo.
pause
goto MENU
