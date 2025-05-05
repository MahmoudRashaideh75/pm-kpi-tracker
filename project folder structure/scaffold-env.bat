@echo off
SETLOCAL

REM === Create Root Folder ===
set ROOT=pm-kpi-tracker
mkdir %ROOT%
cd %ROOT%

REM === Top-Level Directories ===
mkdir frontend-app
mkdir backend-api
mkdir infrastructure

REM === backend-api Structure ===
cd backend-api
mkdir src tests
cd src
mkdir controllers models routes services utils
cd ..
type nul > Dockerfile
type nul > docker-compose.yml
type nul > package.json
type nul > README.md
cd ..

REM === frontend-app Structure ===
cd frontend-app
mkdir public src
cd src
mkdir components pages services utils
cd ..
type nul > .env.local
type nul > package.json
type nul > tsconfig.json
type nul > README.md
cd ..

REM === infrastructure Structure ===
cd infrastructure
mkdir scripts terraform ansible
type nul > docker-compose.yml
type nul > README.md
cd ..

echo.
echo ✔ Scaffolding complete under '%ROOT%'
pause
ENDLOCAL