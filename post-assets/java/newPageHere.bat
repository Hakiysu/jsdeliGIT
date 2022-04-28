@echo off 

set /p input=New page name:
powershell D:\coding\blog\npg.bat
xcopy /S D:\coding\blog\source\sample\ .\%input%\
rd /s /q D:\coding\blog\source\sample
exit