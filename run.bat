@echo off
echo ========================================================
echo   PROJECT MANTLE - INTERACTIVE REPORT PREVIEWER
echo ========================================================
echo.
echo Launching your web browser to view the report...
start "" "http://localhost:3000"
echo.
echo Starting local node server on port 3000...
echo (To stop the server, close this command window)
echo.
node server.js
