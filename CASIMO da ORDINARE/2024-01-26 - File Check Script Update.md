# 📅 Chat del 2024-01-26 — File Check Script Update

---

## 👤 **Utente**

@echo off

REM Imposta le variabili
set IP_LIST=ip_lista.txt
set REMOTE_PATH=C:\TMP\aggiornamento_estensa
set OUTPUT=C:\output

REM Apri il file della lista degli IP
for /f "delims=" %%i in (%IP_LIST%) do (

REM Connetti al computer remoto
echo Connessione a %%i...
net use \\%%i\ipc$ /user:administrator password

REM Controlla la presenza dei file
echo Controllo di %%i...

REM Controlla se il computer risponde
ping -n 1 %%i >nul
if %ERRORLEVEL% == 0 (

    if exist \\%%i\%REMOTE_PATH\AGGIORNAMENTO_CLIENT.BAT (
        if exist \\%%i\%REMOTE_PATH\SUITESTENSA.Client_34.11.0.0.exe (
            echo %%i >> %OUTPUT%
        ) 
    ) 
) 

REM Disconnetti dal computer remoto
echo Disconnessione da %%i...
net use \\%%i\ipc$ /delete
) 
Usa il codice con cautela. Scopri di più
immagine del profilo
modifica lo script in modo che scriva nel file output solo se mancano quei file

Ecco un esempio di script BAT che soddisfa i requisiti richiesti:

DOS
@echo off

REM Imposta le variabili
set IP_LIST=ip_lista.txt
set REMOTE_PATH=C:\TMP\aggiornamento_estensa
set OUTPUT=C:\output

REM Apri il file della lista degli IP
for /f "delims=" %%i in (%IP_LIST%) do (

REM Connetti al computer remoto
echo Connessione a %%i...
net use \\%%i\ipc$ /user:administrator password

REM Controlla la presenza dei file
echo Controllo di %%i...

REM Controlla se il computer risponde
ping -n 1 %%i >nul
if %ERRORLEVEL% == 0 (

    if not exist \\%%i\%REMOTE_PATH\AGGIORNAMENTO_CLIENT.BAT (
        echo %%i >> %OUTPUT%
    )
    if not exist \\%%i\%REMOTE_PATH\SUITESTENSA.Client_34.11.0.0.exe (
        echo %%i >> %OUTPUT%
    )
)

REM Disconnetti dal computer remoto
echo Disconnessione da %%i...
net use \\%%i\ipc$ /delete
)

---

## 🤖 **Sethis**

Lo script modificato verifica se i file `AGGIORNAMENTO_CLIENT.BAT` e `SUITESTENSA.Client_34.11.0.0.exe` NON sono presenti nel percorso remoto specificato. Se uno o entrambi i file mancano, l'indirizzo IP del computer remoto verrà aggiunto al file di output.

Ricorda di personalizzare le variabili come `IP_LIST`, `REMOTE_PATH`, e `OUTPUT` in base alle tue esigenze. Assicurati di avere i permessi necessari per accedere ai computer remoti.

Usa questo script con cautela e solo su sistemi e reti in cui hai l'autorizzazione necessaria.

Se hai ulteriori domande o hai bisogno di ulteriore assistenza, non esitare a chiedere!

---

## 🔚 Fine chat

📌 *Font consigliato: Inter 16pt.*
