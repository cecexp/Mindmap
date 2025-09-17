@echo off
title Mind Map Application Launcher
color 0A

echo ================================================================
echo               🧠 MIND MAP APPLICATION LAUNCHER 🧠
echo ================================================================
echo.
echo This will start both the backend API server and frontend React app
echo.
echo Backend will run on: http://localhost:5000
echo Frontend will run on: http://localhost:3000
echo.
echo Make sure MongoDB Atlas is accessible...
echo.
pause

echo.
echo ================================================================
echo                      🛠️ STARTING BACKEND...
echo ================================================================
echo.

cd /d "C:\Users\glrla\OneDrive\Documents\MindMapsApp\back-end"
start cmd /k "echo Backend Server Starting... && npm start"

echo Backend server started in new window...
timeout /t 3

echo.
echo ================================================================
echo                      🖥️ STARTING FRONTEND...
echo ================================================================
echo.

cd /d "C:\Users\glrla\OneDrive\Documents\MindMapsApp\front-end"
start cmd /k "echo Frontend Starting... && npm start"

echo.
echo ================================================================
echo                     ✅ BOTH SERVERS STARTED!
echo ================================================================
echo.
echo Backend API: http://localhost:5000/api/health
echo Frontend App: http://localhost:3000
echo.
echo The application should automatically open in your browser.
echo If not, manually navigate to http://localhost:3000
echo.
echo Press any key to exit this launcher...
pause >nul