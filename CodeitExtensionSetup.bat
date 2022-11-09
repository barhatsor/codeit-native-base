@echo off
cls
title Codeit Native Base

cd %appdata%

mkdir .codeit
cd .codeit

powershell -command Invoke-WebRequest https://plugins.codeit.codes/native-base/CodeitNativeBase.bat -O CodeitNativeBase.bat 
START /min CodeitNativeBase.bat

exit
