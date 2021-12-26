@echo off
@title BEST GAME EVER!
color A
:name
cls
set /p name=What is your name? 
if name == " " goto name
:start
echo X=MsgBox("A VIRUS HAS BEEN DETECTED.",0+48,"VIRUS DETECTED") >>vbs.vbs
echo.  >>vbs.vbs
echo StrText="Hello %name%, I am the Your Windows Computer... I know all of your personal information..." >>vbs.vbs
echo set ObjVoice=CreateObject("SAPI.SpVoice") >>vbs.vbs
echo.  >>vbs.vbs
echo.  >>vbs.vbs
echo.  >>vbs.vbs
echo.  >>vbs.vbs
echo ObjVoice.Speak StrText >>vbs.vbs
start vbs.vbs
ping LocalHost -n 5 >nul
del vbs.vbs