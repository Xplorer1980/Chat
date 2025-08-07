@echo off
cd /d D:\Chat

:loop
rem Trova il primo file modificato o nuovo non ancora committato
for /f "delims=" %%F in ('git ls-files --others --exclude-standard ^& git ls-files -m') do (
    echo [INFO] Prossimo file: %%F
    git add "%%F"
    git commit -m "🚀 Push automatico: %%F"
    git push
    echo [OK] Pushato: %%F
    timeout /t 30 >nul
    goto loop
)

echo [FINE] Nessun file da pushare. Attendo 30s prima di riprovare...
timeout /t 30 >nul
goto loop
