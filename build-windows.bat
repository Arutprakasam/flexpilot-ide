@echo off
setlocal

echo Installing project dependencies...
call npm install

echo Building for Windows x64...
call npm run gulp vscode-win32-x64-min

echo Build complete.
endlocal
