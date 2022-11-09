@echo off
cls
title Codeit Native Base
echo Installing...


:: Download Node.js
:: powershell -command Invoke-WebRequest https://nodejs.org/dist/v18.12.1/node-v18.12.1-win-x64.zip -O node.zip
powershell -command Invoke-WebRequest https://github.com/barhatsor/codeit-native-base/releases/download/1.0.0/node.zip -O node.zip


:: Download zip extractor
powershell -command Invoke-WebRequest https://plugins.codeit.codes/native-base/zipjs.bat -O zipjs.bat


:: Extract Node.js
call zipjs.bat unzip -source %cd%\node.zip -destination node -keep yes -force no


:: Find Node.js path and run it
cd node
set nodeDir = where /r %cd% node.exe
call start %nodeDir%


exit
