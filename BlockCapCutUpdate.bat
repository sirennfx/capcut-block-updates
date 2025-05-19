@echo off
:: Set CapCut folder path (modify if needed)
set "capcutPath=%LOCALAPPDATA%\CapCut\Apps"

:: Delete update.exe if it exists
echo Checking for update.exe...
if exist "%capcutPath%\update.exe" (
    echo Deleting update.exe...
    del /f /q "%capcutPath%\update.exe"
) else (
    echo No update.exe found.
)

:: Create a dummy ProductInfo file if it doesn't exist
if not exist "%capcutPath%\ProductInfo" (
    echo [BLOCKED] > "%capcutPath%\ProductInfo"
    echo Created dummy ProductInfo file.
) else (
    echo ProductInfo already exists.
)

:: Remove inheritance and grant read-only to user
icacls "%capcutPath%\ProductInfo" /inheritance:r
icacls "%capcutPath%\ProductInfo" /grant:r "%username%":(R)
icacls "%capcutPath%\ProductInfo" /deny "SYSTEM":W
icacls "%capcutPath%\ProductInfo" /deny "%username%":W

:: Make it read-only for extra lock
attrib +R "%capcutPath%\ProductInfo"

echo Done! CapCut update.exe removed and ProductInfo locked.
pause
