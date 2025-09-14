# 📅 Chat del 2025-09-01 — Zoom ZBrush comportamento

---

## 👤 **RAF**

perchè lo zoom di zbrush punta sempre in un punto, invece di andare sull'ultimo punto toccato

---

## 🤖 **GPT**

Questa è una delle “finezze nascoste” di ZBrush, e manda in crisi parecchi la prima volta.  
Quello che tu chiami “zoom” in realtà in ZBrush si divide in due comandi diversi:

- **Zoom/Scale (Alt + clic destro + drag)** → non è un vero zoom della camera, ma un *rescaling* del modello nello spazio di lavoro, e punta sempre verso il **punto di pivot attuale**. Se non lo cambi, per default il pivot è al centro del modello (o della bounding box).  

- **Zoom documento (Ctrl+0 / UI Zoom)** → ingrandisce/riduce l’intera tela (canvas), ma non c’entra col modello.  

👉 Quindi quando tu cerchi di “zoomare” su un punto toccato, in realtà ZBrush non segue il click, ma il pivot.

---

### Come risolvere / adattare il comportamento:
1. **Alt + click sul punto**  
   Tieni premuto **Alt** e clicca sul punto del modello: questo sposta il **pivot temporaneo** lì. Ora lo zoom/rotate ruoteranno e scaleranno attorno a quel punto.

2. **Local Transformations**  
   Attiva l’opzione **Transform → Local**: il pivot verrà aggiornato automaticamente sull’ultimo punto toccato (con lo sculpting, con il pennello, ecc.), rendendo le navigazioni più “intuitive”.

3. **Set Pivot / Clear Pivot**  
   In **Transform** trovi i comandi `Set Pivot` e `Clear Pivot` che ti permettono di fissare manualmente un pivot su una porzione del modello.

---

✨ In pratica: ZBrush non ha una camera tradizionale come Blender/Maya. La sua filosofia è “scalare/ruotare il modello” intorno a un pivot.  
Se vuoi lo zoom “sul punto cliccato” devi usare **Alt+click** (pivot temporaneo) oppure attivare **Local**.  

Vuoi che ti scriva una mini-tabella rapida con tutte le combinazioni di tasti per muoverti senza impazzire?

---

## 👤 **RAF**

per duplicare un oggetto con il gizmo attivo non bastava tenere tenuto CTRL + muovere con il mouse ?

---

## 🤖 **GPT**

Esatto, ti ricordi bene 🌱 ma c’è una piccola sottigliezza: in ZBrush il comportamento dipende da cosa hai attivo in quel momento.  

---

### Con il **Gizmo 3D** attivo:
- **CTRL + trascina una freccia/asse** → duplica la subtool.  
  - Se hai il gizmo sul modello intero, ti fa una copia della **subtool**.  
  - Se invece hai una maschera, duplica **solo la parte non mascherata** e la sposta.  
- ⚠️ Dopo l’operazione, ZBrush crea la copia *fusa* nello stesso SubTool, a meno che tu non faccia subito `Split Unmasked Points` (SubTool → Split).  

---

### Con **Transpose Line** (vecchio sistema, senza Gizmo):
- Funzionava simile: **CTRL + drag** lungo la linea di transpose duplicava la mesh mascherata.  

---

### Nota pratica:
Se a te non funziona, di solito è per due motivi:
1. **Hai tutta la subtool mascherata o niente di mascherato** → e quindi non capisce cosa copiare.  
2. Sei in **modalità multimove** (più subtools) → in quel caso non duplica, ma muove solo.  

---

Vuoi che ti prepari un mini-workflow “pulito” per fare duplicazioni veloci con Gizmo + Split, così non ti ritrovi subtools incollate una sull’altra?

---

## 🔚 Fine chat

📌 *Font consigliato: Inter 16pt.*
