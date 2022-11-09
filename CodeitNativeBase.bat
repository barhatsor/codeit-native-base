@echo off
cls
title Codeit Native Base
echo Installing...


:: Download Node.js
powershell -command Invoke-WebRequest https://nodejs.org/dist/v18.12.1/node-v18.12.1-win-x64.zip -O node.zip


:: Download zip extractor
powershell -command Invoke-WebRequest https://plugins.codeit.codes/native-base/zipjs.bat -O zipjs.bat


:: Extract Node.js
zipjs.bat unzip -source %cd%\node.zip -destination node -keep yes -force yes


:: Find Node.js path and run it
cd node
set nodeDir = where /r %cd% node.exe
call start %nodeDir%


exit
