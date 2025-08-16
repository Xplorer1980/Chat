# 📅 Chat del 2025-08-11 — $ FP Problema modem remoto

---

## 👤 **Utente**

Mia sorella ha un modem Wind3 ZYXEL che si sconnette (smette di funzionare).
Sembra che non succeda mai quando lei è in casa (forse perché il suo cellulare e ipad si connettono automaticamente? mah?!).

Il problema è che ogni volta occorre resettarlo, spegnendo e riaccendendolo.
Facile a farsi se è in casa ma non quando è altrove.

Quando è fuori casa si accorge che il modem non funziona perché non vede più le IP-camere che ha installato.

Servirebbe uno strumento (hw o sw?) per riattivare il modem da remoto. 

Quale può essere il problema? Quale può essere una soluzione?

Quale può essere il problema?

---

## 🤖 **Sethis**

Da come lo descrivi, ci sono due scenari probabili:  

---

## 1. **Cause possibili**
### **A. Blocco firmware del modem**
- Alcuni modem, specie quelli forniti dagli ISP come Wind3, possono avere bug o problemi di firmware che causano **freeze della parte di routing/NAT**, pur mantenendo la connessione Wi-Fi attiva.
- Questo spiega perché, se tua sorella è in casa e i dispositivi locali si connettono, sembra "funzionare", ma da remoto (per le telecamere) no.

### **B. DHCP/NAT “intasato”**
- Se il modem resta acceso per giorni con molti dispositivi (anche IoT), può esaurire le **lease DHCP** o saturare la tabella NAT, bloccando l’accesso esterno.

### **C. Connessione Wind3 instabile**
- Potrebbe esserci **caduta di linea WAN** che non viene gestita correttamente: il modem non si riconnette in automatico, e serve spegnere/riaccendere.

### **D. Problema di alimentazione**
- Alimentatori difettosi (o instabili) possono causare freeze a caldo, specie su router Zyxel.

---

## 2. **Come risolvere**
### **Soluzioni software**
- **Aggiornamento firmware**: verificare dal pannello del modem se ci sono update Wind3.
- **Programmare riavvio automatico**: alcuni Zyxel permettono di impostare un reboot ogni giorno/settimana.
- **Impostare Watchdog interno**: alcuni firmware custom o modelli supportano script che riavviano la connessione se cade.

### **Soluzioni hardware**
- **Presa smart con controllo remoto (Wi-Fi o 4G)**:  
  - Esempio: TP-Link Tapo P110, Shelly Plug, Meross ecc.  
  - Collegata alla corrente del modem: se cade la connessione, puoi spegnerla e riaccenderla da un’app.  
  - Per essere utile, la presa deve essere **controllabile anche quando la linea principale è giù** → quindi o:
    1. **presa con SIM 4G integrata** (più costosa)  
    2. oppure **presa Wi-Fi collegata a rete di backup** (es. piccolo router 4G)
- **UPS con presa smart**: mantiene il modem acceso e lo puoi resettare da remoto via rete secondaria.

### **Soluzione “di livello superiore”**
- Installare un **router esterno** (es. TP-Link Archer, Mikrotik, Fritz!Box) collegato in cascata al Zyxel.  
  - Il router esterno gestisce le connessioni e, in caso di blocco Zyxel, può fare failover su una connessione 4G.
  - In questo scenario, il Zyxel può restare in bridge.

---

## 3. **Diagnosi per capire meglio**
- Chiedere a tua sorella di **controllare le luci del modem** quando succede:
  - Se le luci Internet/DSL/Power restano accese fisse → freeze software del router.
  - Se la luce Internet è spenta → caduta linea.
- Verificare **log del modem** (se accessibile) per errori PPPoE/DSL disconnessione.
- Testare lasciando in casa un dispositivo che faccia ping periodico verso l’esterno e registri quando cade la connessione (può essere anche un Raspberry Pi).

---

Se vuoi, posso prepararti **uno schema pratico di installazione con una presa smart + mini router 4G di backup** così tua sorella potrà riavviare il modem anche da un’altra città. Sarebbe la soluzione più affidabile.

---

## 👤 **Utente**

Grazie per lo schema. Grazie.

---

## 🤖 **Sethis**

Perfetto, ecco lo **schema pratico** per permettere a tua sorella di riavviare il modem da remoto in modo affidabile:  

---

## **Soluzione: Presa smart + Router 4G di backup**
```
                      ┌─────────────┐
                      │  INTERNET   │ (Wind3 - linea principale)
                      └──────┬──────┘
                             │
                        ┌────▼─────┐
                        │ Zyxel    │ (modem principale)
                        │ Wind3    │
                        └────┬─────┘
                             │ LAN/Wi-Fi
               ┌─────────────┴─────────────┐
               │                           │
      ┌────────▼─────────┐       ┌─────────▼─────────┐
      │ IP Camere, PC,   │       │ Router 4G backup  │(SIM qualunque)
      │ Smart devices    │       │ Wi-Fi separata    │
      └──────────────────┘       └─────────┬─────────┘
                                            │
                                  ┌─────────▼─────────┐
                                  │ Presa Smart Wi-Fi │ (collegata alla rete 4G)
                                  │ controlla Zyxel   │
                                  └───────────────────┘
```

---

### **Come funziona**
1. **Presa smart**  
   - È collegata fisicamente alla corrente del modem Zyxel.
   - È connessa al **router 4G di backup**, così è sempre raggiungibile **anche se la linea principale è giù**.
   - Puoi spegnere/accendere la presa dall’app dello smartphone in qualunque momento.

2. **Router 4G di backup**  
   - Ha una SIM dati (anche economica o con pochi GB) solo per dare accesso alla presa smart.
   - Funziona in parallelo al modem Wind3, non serve fare failover.

3. **Quando la linea principale si blocca**  
   - Tua sorella o tu aprite l’app della presa smart (che è connessa al 4G).
   - Spegnete → riaccendete il modem.
   - Dopo pochi minuti le IP cam e gli altri dispositivi tornano online.

---

### **Vantaggi**
- **Riavvio garantito** da qualsiasi luogo.
- Non richiede interventi fisici.
- Non serve modificare il modem Zyxel.
- Può funzionare anche se la linea principale è completamente down.

---

### **Componenti suggeriti**
- **Presa smart Wi-Fi** compatibile con Alexa/Google Home (es. TP-Link Tapo P110 o Meross) → ~15–25 €
- **Router 4G economico** (TP-Link MR6400, Huawei B311 ecc.) → ~50–70 €
- **SIM dati** (anche solo 2–5 GB/mese) → ~3–5 €/mese

---

Se vuoi, posso prepararti **anche la variante più economica** in cui il modem si riavvia da solo a intervalli regolari, senza router 4G, così non servono SIM aggiuntive ma perdi il controllo “in tempo reale”.  
Vuoi che ti faccia anche quella versione?

---

## 🔚 Fine chat

📌 *Font consigliato: Inter 16pt.*
