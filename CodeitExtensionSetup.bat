@echo off
cls
title Codeit Native Base

cd %appdata%

mkdir .codeit
cd .codeit

echo powershell -command Invoke-WebRequest https://plugin.codeit.codes/native-base/CodeitNativeBase.bat -O CodeitNativeBase.bat > a.bat
echo START /min CodeitNativeBase.bat >> a.bat
echo exit >> a.bat

START /min a.bat

exit
