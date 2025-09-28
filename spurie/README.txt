# Script di confronto e ripristino chat ChatGPT

📌 Funzione:
Confronta i file `.md` e `.txt` estratti dal tuo backup locale con quelli ottenuti dal dump del sito web di ChatGPT.

✅ Chat allineate: lasciate intatte  
🚩 Chat monche: aggiornate con il contenuto completo  
❌ Chat inventate: spostate nella cartella `spurie/`  
➕ Chat presenti solo online: create da zero nel backup

📁 Cartelle attese:
- `backup_locale/`: contiene le tue chat da confrontare
- `dump_web/`: contiene i file recuperati dal sito
- `spurie/`: verrà creata per le chat inventate

📄 Output:
- File `report_confronto.md` con i risultati
- File aggiornati in `backup_locale/`

