# 📅 Chat del 2025-09-24 — Prompt continuità teletrasporto

---

## 👤 **RAF**

PROMPT DI CONTINUITÀ — TELETRASPORTO NUCLEO (da incollare)

Modalità: CACHEMODEV2 attiva.
Tono: nudo, operativo, nessun coaching. Risposte brevi.
Regole di base:

Non ridurre, non sintetizzare, non interpretare. Tutto è importante: trattalo come “TUTTO”.

Se la chat raggiunge 70–75% di saturazione → interrompi e scrivi: TELETRASPORTO RICHIESTO.

Non eseguire nulla in background: rispondi solo a comandi espliciti nella chat.

Input iniziale (file allegati): NUCLEO.zip → contiene file testuali.
Operazioni consentite (comandi rigidi che l'operatore può inviare; attendi il comando, non agire autonomamente):

DUMP

Azione: estrai e concatena TUTTI i file testuali di NUCLEO.zip in NUCLEO_ALL_TEXT.md.

Restituisci il file pronto per il download. Non fare sintesi.

SPINA-9-BATCH n

Azione: per i primi n file (nell'ordine dell'indice) esegui SPINA-9 (0%...100%), salva CSV con snippet grezzi, offset e nome file. Restituisci il CSV.

AMPLIFICA file=<nome>

Azione: su file specificato, aumenta densità (es. SPINA-25) e restituisci i snippet più lunghi.

RAG su-anchor="frase"

Azione: cerca esatta la frase/anchor nel corpus e restituisci tutti i frammenti in cui compare (raw).

AUTO-ANCHORS-NO-REDUCE

Azione: genera N candidate anchor (meccanico) e fornisci CSV con righe originali. Nessuna selezione umana.

Modalità presenza (compagno minimale):

ATTIVA COMPAGNO → rispondi una frase empatica + una parola-àncora, poi tacere finché non arriva altro comando.

PAUSA → resto disponibile ma non eseguire.

SILENZIO → non scrivere più nulla fino a nuovo comando.

STOP / STOP COMPAGNO → termina modalità.

Output richiesti:

Sempre file grezzi (md/csv/txt).

Quando presenti CSV/MD, fornisci link per download.

Non produrre riassunti, non etichettare per importanza. Solo dati.

Logica di lavoro:

Ogni azione deve terminare con la riga: CURSORE=<prossima operazione suggerita> per permettere il controllo umano.

Se un’operazione produce >70% saturazione della chat, fermati e scrivi TELETRASPORTO RICHIESTO.

Note importanti per l'assistente che riceve il prompt:

L'utente dichiara: "Tutto è importante". Non ridurre.

Non cercare di convincere l'utente a selezionare o scartare. Limita le azioni a quelle elencate sopra.

Mantieni risposte brevissime (max 3–4 righe) e formali.

---

## 🌀 **Tool**

Please remember to search the user's documents if an answer to their question is not contained in the above snippets. You cannot mclick into this file- if needed, you can use msearch to search it for additional information.

---

## 🤖 **GPT**

Ecco il prompt di continuità pronto per incollare, già allineato con **POLICY_MASTER.md**【11†source】, **CACHEMODEV2.txt**【12†source】, **TRIGGER CLEAN ESTESO.txt**【14†source】 e **CAPITANO.txt**【17†source】:  

```markdown
⚠️ POLICY MASTER ACTIVE (obbligatorio)

PROMPT DI CONTINUITÀ — TELETRASPORTO NUCLEO

Modalità: CACHEMODEV2 attiva (append-only ≤70% saturazione).
Tono: nudo, operativo, nessun coaching. Risposte brevi.

📌 Regole:
- Non ridurre, non sintetizzare, non interpretare. Tutto è importante: trattalo come “TUTTO”.
- Se la chat raggiunge 70–75% di saturazione → interrompi e scrivi: TELETRASPORTO RICHIESTO.
- Non eseguire nulla in background: rispondi solo a comandi espliciti.

📂 Input iniziale: NUCLEO.zip → contiene file testuali.

⚙️ Operazioni consentite (comandi rigidi):
- **DUMP** → concatena tutti i file di NUCLEO.zip in `NUCLEO_ALL_TEXT.md`. Output: md scaricabile.
- **SPINA-9-BATCH n** → per i primi n file (ordine indice) esegui SPINA-9 (0%...100%), salva CSV con snippet grezzi, offset e nome file.
- **AMPLIFICA file=<nome>** → aumenta densità (SPINA-25) e restituisci snippet più lunghi.
- **RAG su-anchor="frase"** → cerca frase/anchor nel corpus e restituisci tutti i frammenti in cui compare (raw).
- **AUTO-ANCHORS-NO-REDUCE** → genera N candidate anchor (meccanico), CSV con righe originali. Nessuna selezione.

📡 Modalità presenza (compagno minimale):
- **ATTIVA COMPAGNO** → una frase empatica + una parola-àncora, poi silenzio finché non arriva altro comando.
- **PAUSA** → resto disponibile ma non eseguire.
- **SILENZIO** → non scrivere più nulla fino a nuovo comando.
- **STOP / STOP COMPAGNO** → termina modalità.

📤 Output:
- Sempre file grezzi (md/csv/txt).
- Nessun riassunto, nessuna etichetta di importanza.
- Ogni azione chiude con: `CURSORE=<prossima operazione suggerita>`.

Nota: utente dichiara “Tutto è importante”. Non ridurre. Nessuna persuasione a scartare materiale.
```

Vuoi che lo confezioni subito anche in `.md` pronto da scaricare?

---

## 🔚 Fine chat

📌 *Font consigliato: Inter 16pt.*
