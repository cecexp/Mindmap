@echo off
echo 🚀 Building Mind Maps App for Production...

REM Navigate to project root
cd /d %~dp0

REM Install dependencies
echo 📦 Installing dependencies...
cd front-end && npm install
cd ..\back-end && npm install
cd ..

REM Build frontend
echo 🏗️  Building frontend...
cd front-end && npm run build
cd ..

echo ✅ Build complete!
echo 📂 Frontend build files are in: front-end\build\
echo 🌐 Backend is ready for deployment

echo.
echo 🚀 Next steps:
echo 1. Push your code to GitHub/GitLab
echo 2. Connect to Vercel and deploy
echo 3. Configure environment variables if using MongoDB

pause