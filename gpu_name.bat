@echo off
chcp 65001 >nul
for /f %%a in ('echo prompt $E^|cmd') do set "ESC=%%a"
title Fake GPU Name Tool
color 0A

:: Kiem tra quyen admin ngay tu dau, xin UAC 1 lan duy nhat
fltmc >nul 2>&1 || (
    powershell -Command "try { Start-Process '%~f0' -Verb RunAs -ErrorAction Stop } catch { exit 1 }"
    if errorlevel 1 (
        echo.
        echo Ban da tu choi cap quyen Admin.
        echo Tool nay bat buoc phai chay voi quyen Admin moi hoat dong duoc.
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
echo   %ESC%[93m[1] %ESC%[92mHuong dan lay Hardware ID cua GPU%ESC%[0m
echo   %ESC%[93m[2] %ESC%[92mChay fake ten GPU%ESC%[0m
echo   %ESC%[93m[3] %ESC%[92mThoat%ESC%[0m
echo.
echo %ESC%[92m=================================================%ESC%[0m
set /p choice="Chon (%ESC%[93m1%ESC%[0m/%ESC%[93m2%ESC%[0m/%ESC%[93m3%ESC%[0m): "

if "%choice%"=="1" goto HUONGDAN
if "%choice%"=="2" goto CHAYFAKE
if "%choice%"=="3" exit /b
goto MENU

:HUONGDAN
cls
echo ================================================
echo               CACH LAY HARDWARE ID 
echo ================================================
echo.
echo %ESC%[93mCach 1 - Dung PowerShell (khong can quyen admin):%ESC%[0m
echo   An nut win tim PowerShell hoac Win + X chon Terminal (doi voi win 11), go lenh sau:
echo   Get-PnpDevice -Class Display ^| Select FriendlyName, InstanceId
echo.
echo   Vi du ket qua hien ra nhu nay:
echo   ROOt\DISPLAY\0000
echo   PCI\VEN_1002^&DEV_7340^&SUBSYS_04E61043^&REV_C5\6^&1BFE57C5^&0^&00000008
echo.
echo   Hardware ID can nhap chinh la: "%ESC%[32mPCI\VEN_1002^&DEV_7340^&SUBSYS_04E61043^&REV_C5\6^&1BFE57C5^&0^&00000008%ESC%[0m" 
echo.
echo %ESC%[93mCach 2 - Dung Device Manager:%ESC%[0m
echo   An nut win tim Device Mangager hoac Win + X chon Device Manager
echo   Device Manager -^> Display adapters -^> chuot phai GPU
echo   -^> Properties -^> Details -^> chon "Hardware Ids" ngay o dong so 3
echo.
echo   Vi du ket qua hien ra nhu nay:
echo   PCI\VEN_1002^&DEV_7340^&SUBSYS_04E61043^&REV_C5
echo   PCI\VEN_1002^&DEV_7340^&SUBSYS_04E61043
echo   PCI\VEN_1002^&DEV_7340^&CC_0300
echo.
echo   Chuot phai vo dong nao dai nhat chon copy.
echo   %ESC%[91mLUU Y%ESC%[0m: Neu khong chay duoc phai dan ID ra ben ngoai truoc
echo   (Vi du nhu Chrome hay Nodepad) roi moi sao chep lai 1 lan nua va dan vo lenh.
echo.
pause
goto MENU

:CHAYFAKE
cls
echo ================================================
echo                CHAY FAKE TEN GPU
echo ================================================
echo.
set /p hwid="Nhap Hardware ID: "
set /p fakename="Nhap ten GPU muon fake thanh: "

echo.
echo Dang tim thiet bi khop voi %hwid% ...
set found=0

for /f "tokens=*" %%a in ('reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum" /s /f "%hwid%" ^| findstr "Control"') do (
    reg add "%%a" /v FriendlyName /t REG_SZ /d "%fakename%" /f >nul 2>&1
    set found=1
)

if "%found%"=="0" (
    echo Khong tim thay thiet bi nao khop voi ID nay.
    echo Kiem tra lai Hardware ID o muc [1].
    pause
    goto MENU
)

pnputil /scan-devices >nul 2>&1
echo.
echo %ESC%[93mDa fake ten GPU thanh: %fakename%%ESC%[0m
echo Co the can restart de thay doi ap dung day du.
echo.
pause
goto MENU