@echo off
cd /d D:\Chat

:loop
echo [INFO] Push in corso...
git add .

:: Solo se ci sono modifiche, esegue commit e push
git diff --cached --quiet
if errorlevel 1 (
    git commit -m "🚀 Push automatico ogni 30s"
    git push
) else (
    echo [INFO] Nessuna modifica da pushare.
)

timeout /t 30 >nul
goto loop
