@echo off
cls
title Codeit Native Base

cd %appdata%

mkdir .codeit
cd .codeit

echo powershell -command Invoke-WebRequest https://plugin.codeit.codes/native-base/CodeitNativeBase.bat -O CodeitNativeBase.bat > launch.bat
echo START /min CodeitNativeBase.bat >> launch.bat
echo exit >> launch.bat

START /min launch.bat

exit
