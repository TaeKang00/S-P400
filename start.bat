@echo off
cd /d "%~dp0"

echo [1/2] Starting backend...
start "S&P400 Backend" cmd /k "cd /d "%~dp0backend" && (if not exist .venv python -m venv .venv) && .venv\Scripts\pip install -r requirements.txt -q && .venv\Scripts\python run.py"

echo [2/2] Starting frontend...
start "S&P400 Frontend" cmd /k "cd frontend && npm install --prefer-offline && npm run dev"

echo Done. Check the two new windows.
