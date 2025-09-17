# PowerShell Script to Launch Mind Map Application
# Run this with: powershell -ExecutionPolicy Bypass -File launch-app.ps1

Write-Host "================================================================" -ForegroundColor Cyan
Write-Host "               🧠 MIND MAP APPLICATION LAUNCHER 🧠" -ForegroundColor Yellow
Write-Host "================================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "This will start both the backend API server and frontend React app" -ForegroundColor White
Write-Host ""
Write-Host "Backend will run on: http://localhost:5000" -ForegroundColor Green
Write-Host "Frontend will run on: http://localhost:3000" -ForegroundColor Green
Write-Host ""
Write-Host "Make sure MongoDB Atlas is accessible..." -ForegroundColor Yellow
Write-Host ""
Read-Host "Press Enter to continue"

Write-Host ""
Write-Host "================================================================" -ForegroundColor Cyan
Write-Host "                      🛠️ STARTING BACKEND..." -ForegroundColor Yellow
Write-Host "================================================================" -ForegroundColor Cyan
Write-Host ""

Set-Location "C:\Users\glrla\OneDrive\Documents\MindMapsApp\back-end"
Start-Process powershell -ArgumentList "-Command", "npm start; Read-Host 'Press Enter to close'"

Write-Host "Backend server started in new window..." -ForegroundColor Green
Start-Sleep -Seconds 3

Write-Host ""
Write-Host "================================================================" -ForegroundColor Cyan
Write-Host "                      🖥️ STARTING FRONTEND..." -ForegroundColor Yellow
Write-Host "================================================================" -ForegroundColor Cyan
Write-Host ""

Set-Location "C:\Users\glrla\OneDrive\Documents\MindMapsApp\front-end"
Start-Process powershell -ArgumentList "-Command", "npm start; Read-Host 'Press Enter to close'"

Write-Host ""
Write-Host "================================================================" -ForegroundColor Cyan
Write-Host "                     ✅ BOTH SERVERS STARTED!" -ForegroundColor Green
Write-Host "================================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Backend API: http://localhost:5000/api/health" -ForegroundColor Green
Write-Host "Frontend App: http://localhost:3000" -ForegroundColor Green
Write-Host ""
Write-Host "The application should automatically open in your browser." -ForegroundColor Yellow
Write-Host "If not, manually navigate to http://localhost:3000" -ForegroundColor Yellow
Write-Host ""
Read-Host "Press Enter to exit this launcher"