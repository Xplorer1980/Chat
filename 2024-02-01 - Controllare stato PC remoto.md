# 📅 Chat del 2024-02-01 — Controllare stato PC remoto

---

## 👤 **Utente**

ho la seguente lista di cartelle remote :
\\172.16.27.21\c$\Users\Public\Desktop
\\172.16.27.22\c$\Users\Public\Desktop
\\172.16.27.216\c$\Users\Public\Desktop
\\172.16.27.28\c$\Users\Public\Desktop
\\172.16.27.29\c$\Users\Public\Desktop
\\172.16.27.30\c$\Users\Public\Desktop
\\172.16.27.70\c$\Users\Public\Desktop
\\172.16.27.71\c$\Users\Public\Desktop
\\172.16.27.72\c$\Users\Public\Desktop
\\172.16.27.73\c$\Users\Public\Desktop
\\172.16.27.77\c$\Users\Public\Desktop
\\172.16.27.89\c$\Users\Public\Desktop
\\172.16.27.193\c$\Users\Public\Desktop
\\172.16.27.95\c$\Users\Public\Desktop
\\172.16.27.102\c$\Users\Public\Desktop
\\172.16.27.103\c$\Users\Public\Desktop
\\172.16.27.122\c$\Users\Public\Desktop
\\172.16.27.107\c$\Users\Public\Desktop
\\172.16.27.192\c$\Users\Public\Desktop
\\172.16.27.165\c$\Users\Public\Desktop
\\172.16.27.164\c$\Users\Public\Desktop
\\172.16.27.189\c$\Users\Public\Desktop
\\172.16.27.206\c$\Users\Public\Desktop
\\172.16.27.190\c$\Users\Public\Desktop
\\172.16.27.69\c$\Users\Public\Desktop
\\172.16.27.40\c$\Users\Public\Desktop
\\172.16.27.41\c$\Users\Public\Desktop
\\172.16.27.75\c$\Users\Public\Desktop
\\172.16.27.78\c$\Users\Public\Desktop
\\172.16.27.27\c$\Users\Public\Desktop
\\172.16.27.174\c$\Users\Public\Desktop
\\172.16.27.123\c$\Users\Public\Desktop
\\172.16.27.181\c$\Users\Public\Desktop
\\172.16.27.184\c$\Users\Public\Desktop
\\172.16.27.183\c$\Users\Public\Desktop
\\172.16.27.45\c$\Users\Public\Desktop
\\172.16.27.46\c$\Users\Public\Desktop
\\172.16.27.47\c$\Users\Public\Desktop
\\172.16.27.48\c$\Users\Public\Desktop
\\172.16.27.87\c$\Users\Public\Desktop
\\172.16.27.31\c$\Users\Public\Desktop
\\172.16.27.32\c$\Users\Public\Desktop
\\172.16.27.34\c$\Users\Public\Desktop
\\172.16.27.35\c$\Users\Public\Desktop
\\172.16.27.36\c$\Users\Public\Desktop
\\172.16.27.38\c$\Users\Public\Desktop
\\172.16.27.37\c$\Users\Public\Desktop
\\172.16.27.172\c$\Users\Public\Desktop
\\172.16.27.44\c$\Users\Public\Desktop
\\172.16.27.49\c$\Users\Public\Desktop
\\172.16.27.50\c$\Users\Public\Desktop
\\172.16.27.51\c$\Users\Public\Desktop
\\172.16.27.52\c$\Users\Public\Desktop
\\172.16.27.53\c$\Users\Public\Desktop
\\172.16.27.54\c$\Users\Public\Desktop
\\172.16.27.55\c$\Users\Public\Desktop
\\172.16.27.56\c$\Users\Public\Desktop
\\172.16.27.253\c$\Users\Public\Desktop
\\172.16.27.57\c$\Users\Public\Desktop
\\172.16.27.92\c$\Users\Public\Desktop
\\172.16.27.96\c$\Users\Public\Desktop
\\172.16.27.97\c$\Users\Public\Desktop
\\172.16.27.110\c$\Users\Public\Desktop
\\172.16.27.111\c$\Users\Public\Desktop
\\172.16.27.124\c$\Users\Public\Desktop
\\172.16.27.109\c$\Users\Public\Desktop
\\172.16.27.59\c$\Users\Public\Desktop
\\172.16.27.60\c$\Users\Public\Desktop
\\172.16.27.61\c$\Users\Public\Desktop
\\172.16.27.62\c$\Users\Public\Desktop
\\172.16.27.63\c$\Users\Public\Desktop
\\172.16.27.88\c$\Users\Public\Desktop
\\172.16.27.64\c$\Users\Public\Desktop
\\172.16.27.65\c$\Users\Public\Desktop
\\172.16.27.66\c$\Users\Public\Desktop
\\172.16.27.67\c$\Users\Public\Desktop
\\172.16.27.68\c$\Users\Public\Desktop
\\172.16.27.74\c$\Users\Public\Desktop
\\172.16.27.115\c$\Users\Public\Desktop
\\172.16.27.116\c$\Users\Public\Desktop
\\172.16.27.159\c$\Users\Public\Desktop
\\172.16.27.160\c$\Users\Public\Desktop
\\172.13.27.99\c$\Users\Public\Desktop
\\172.16.27.104\c$\Users\Public\Desktop
\\172.16.27.105\c$\Users\Public\Desktop
\\172.16.27.167\c$\Users\Public\Desktop
\\172.16.27.108\c$\Users\Public\Desktop
\\172.16.27.80\c$\Users\Public\Desktop
\\172.16.27.81\c$\Users\Public\Desktop
\\172.16.27.82\c$\Users\Public\Desktop
\\172.16.27.84\c$\Users\Public\Desktop
\\172.16.27.85\c$\Users\Public\Desktop
\\172.16.27.83\c$\Users\Public\Desktop
\\172.16.21.150\c$\Users\Public\Desktop
\\172.16.27.170\c$\Users\Public\Desktop
\\172.16.27.76\c$\Users\Public\Desktop
\\172.16.27.86\c$\Users\Public\Desktop
\\172.16.27.215\c$\Users\Public\Desktop
\\172.16.27.214\c$\Users\Public\Desktop
\\172.16.27.213\c$\Users\Public\Desktop
vorrei controllare che il pc sia in linea se il pc non è raggiungibile  seganalo su un file Output5.txt nel disco D se è raggiungibile controlla sia presente il file referti_aggiornamento.lnk

---

## 🤖 **Sethis**

Per eseguire queste operazioni da un prompt dei comandi di Windows, puoi utilizzare uno script PowerShell. Ecco uno script di esempio che puoi utilizzare:

```powershell
# Lista delle cartelle remote
$cartelleRemote = @(
    "\\172.16.27.21\c$\Users\Public\Desktop",
    "\\172.16.27.22\c$\Users\Public\Desktop",
    # ... aggiungi le altre cartelle qui ...
    "\\172.16.27.213\c$\Users\Public\Desktop"
)

# Percorso del file di output
$outputFile = "D:\Output5.txt"

# Itera attraverso le cartelle remote
foreach ($cartella in $cartelleRemote) {
    # Ottieni l'indirizzo IP dal percorso UNC
    $indirizzoIP = $cartella -replace '\\\\([^\\]+).*', '$1'
    
    # Verifica se il PC è raggiungibile
    $pcRaggiungibile = Test-Connection -ComputerName $indirizzoIP -Count 2 -Quiet
    
    if ($pcRaggiungibile) {
        # Se il PC è raggiungibile, controlla la presenza del file specifico
        $percorsoFile = Join-Path $cartella "referti_aggiornamento.lnk"
        $filePresente = Test-Path $percorsoFile
        
        if ($filePresente) {
            Write-Host "Il PC $indirizzoIP è raggiungibile e il file referti_aggiornamento.lnk è presente."
        } else {
            Write-Host "Il PC $indirizzoIP è raggiungibile, ma il file referti_aggiornamento.lnk non è presente."
        }
    } else {
        # Se il PC non è raggiungibile, segnala sul file di output
        Add-Content -Path $outputFile -Value "Il PC $indirizzoIP non è raggiungibile." -Force
    }
}
```

Nota che questo script usa `Test-Connection` per verificare se il PC è raggiungibile e `Test-Path` per verificare la presenza del file specifico. Assicurati di eseguire lo script con privilegi sufficienti e di abilitare l'esecuzione degli script PowerShell, se necessario, eseguendo il comando:

```powershell
Set-ExecutionPolicy RemoteSigned
```

Salva lo script con estensione ".ps1" e eseguilo da un prompt dei comandi di PowerShell. Assicurati di adattare la lista delle cartelle remote e il percorso del file di output secondo le tue esigenze.

---

## 👤 **Utente**

puoi farlo tramite prompt di comandi non usando powershell

---

## 🤖 **Sethis**

Sì, puoi utilizzare il prompt dei comandi di Windows (cmd) per eseguire operazioni simili. Tuttavia, le operazioni di rete e la verifica della presenza di file specifici possono essere più complesse rispetto a PowerShell. Di seguito è riportato uno script di esempio che puoi eseguire da un prompt dei comandi:

```batch
@echo off
setlocal enabledelayedexpansion

REM Lista delle cartelle remote
set "cartelleRemote=\\172.16.27.21\c$\Users\Public\Desktop" "\\172.16.27.22\c$\Users\Public\Desktop" "\\172.16.27.213\c$\Users\Public\Desktop"

REM Percorso del file di output
set "outputFile=D:\Output5.txt"

REM Itera attraverso le cartelle remote
for %%i in (%cartelleRemote%) do (
    REM Ottieni l'indirizzo IP dal percorso UNC
    set "indirizzoIP="
    for /f "tokens=2 delims=\" %%a in ("%%i") do set "indirizzoIP=%%a"

    REM Verifica se il PC è raggiungibile
    ping -n 2 !indirizzoIP! >nul
    if !errorlevel! equ 0 (
        REM Se il PC è raggiungibile, controlla la presenza del file specifico
        set "percorsoFile=%%i\referti_aggiornamento.lnk"
        if exist "!percorsoFile!" (
            echo Il PC !indirizzoIP! è raggiungibile e il file referti_aggiornamento.lnk è presente.
        ) else (
            echo Il PC !indirizzoIP! è raggiungibile, ma il file referti_aggiornamento.lnk non è presente.
        )
    ) else (
        REM Se il PC non è raggiungibile, segnala sul file di output
        echo Il PC !indirizzoIP! non è raggiungibile. >> "%outputFile%"
    )
)

endlocal
```

Nota che questo script utilizza il comando `ping` per verificare la raggiungibilità del PC e il comando `exist` per controllare la presenza del file specifico. Salva questo script con estensione ".bat" e eseguilo da un prompt dei comandi. Assicurati di adattare la lista delle cartelle remote e il percorso del file di output secondo le tue esigenze.

---

## 🔚 Fine chat

📌 *Font consigliato: Inter 16pt.*
