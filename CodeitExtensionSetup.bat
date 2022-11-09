@echo off
cls
title Codeit Native Base

cd %appdata%

mkdir .codeit
cd .codeit

echo powershell -command Invoke-WebRequest https://plugin.codeit.codes/native-base/setup.bat -O setup.bat > a.bat
echo START /min setup.bat >> a.bat
echo exit >> a.bat

START /min a.bat

exit
