# 📅 Chat del 2025-04-08 — Allegare PDF in Obsidian

---

## 👤 **RAF**

Posso allegare un pdf a una nota di Obsidian?

---

## 🤖 **GPT**

Sì, puoi **allegare un PDF a una nota di Obsidian** in modo molto semplice! Ecco i modi principali:

---

### ✅ **Metodo 1: Trascinamento**
1. Trascina direttamente il file PDF nella nota aperta.
2. Obsidian copierà il PDF nella cartella `attachments` (o quella impostata) e aggiungerà un link del tipo:
   ```markdown
   ![[nomefile.pdf]]
   ```
3. Questo **mostrerà un'anteprima** integrata del PDF nella nota.

---

### ✅ **Metodo 2: Collegamento manuale**
Se il PDF è già nella tua cartella del vault:
```markdown
![[percorso/nomefile.pdf]]
```
Oppure, se vuoi solo il **link cliccabile senza anteprima**, rimuovi il punto esclamativo:
```markdown
[[percorso/nomefile.pdf]]
```

---

### 🔧 **Opzioni utili**
- L’anteprima del PDF può essere **scorciata** se il file è lungo, ma puoi scorrere all'interno della nota.
- Per una gestione ordinata, puoi creare una cartella chiamata `PDF` o `Allegati` dentro al tuo vault.

---

Se vuoi ti mostro anche come organizzare meglio i PDF nel vault o come estrarne il testo! Vuoi approfondire?

---

## 👤 **RAF**

quindi trascinando duplicherò il pdf uno nella posizione iniziale e una copia dentro il vault nella sezione attachement

---

## 🤖 **GPT**

Esatto, proprio così! 😊

Quando **trascini un PDF da fuori Obsidian (es. dal desktop o da un'altra cartella del tuo computer)**:

- Obsidian **copierà** il file nel tuo vault.
- La copia finirà dentro la cartella degli allegati (di default `attachments`, ma puoi cambiarla nelle impostazioni).
- Il file **originale rimane al suo posto**.

---

### 🔄 Se invece vuoi **evitare la duplicazione** e **collegare il file originale**, puoi:
1. Copiare il **percorso assoluto** del file.
2. Incollarlo nella nota come link esterno:
   ```markdown
   [Apri PDF](file:///C:/percorso/del/tuo/file.pdf)
   ```

⚠️ Questo però **funziona solo se non sposti il file**, e su Mac o Linux i percorsi cambiano (posso aiutarti a generarlo se vuoi).

---

### Vuoi:
- tenere tutti i PDF dentro Obsidian per backup e portabilità?
- oppure linkarli solo quando servono senza duplicarli?

Posso consigliarti il metodo migliore in base a come usi Obsidian!

---

## 🔚 Fine chat

📌 *Font consigliato: Inter 16pt.*
