#Get license information
@echo off
for /F "Tokens=*" %%L IN (C:\servers.txt) do (
echo.
echo %%L >> C:\Licensestatus.txt
echo.
cscript C:\windows\system32\slmgr.vbs %%L /dli | find "License" >> C:\Licensestatus.txt
cscript C:\windows\system32\slmgr.vbs %%L /xpr | find "Volume" >> C:\Licensestatus.txt
echo =========================
)
pause