@echo off 
set /p input=New page name:
xcopy /S D:\coding\blog\sample\ .\%input%\
exit