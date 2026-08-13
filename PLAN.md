# Piano Stress Test Voltfire — Piattaforma Completa

**Data Inizio:** 2026-08-13  
**Obiettivo:** Stress test reale e completo della piattaforma Voltfire  
**Metodologia:** Test end-to-end con dati veri, operazioni reali, integrazione completa tra moduli

---

## 1. CANALI DI CONTATTO (Sito Web → Gestionale → CRM)

### 1.1 Chatbot
- [ ] Test chatbot su homepage
- [ ] Test su tutte le pagine servizi
- [ ] Verifica ricezione messaggio in CRM/gestionale
- [ ] Verifica qualificazione AI del lead
- [ ] Verifica attivazione follow-up automatico

### 1.2 Form Bolletta/Preventivo (Sito)
- [ ] Upload PDF bolletta reale
- [ ] Upload foto impianto/intervento
- [ ] Compilazione dati azienda cliente
- [ ] Verifica ricezione in CRM
- [ ] Verifica creazione automatica lead
- [ ] Verifica allegati visibili in gestionale

### 1.3 Email
- [ ] Invio email da form sito
- [ ] Ricezione in inbox aziendale
- [ ] Risposta automatica/agente AI
- [ ] Qualificazione lead via email
- [ ] Inserimento in CRM

### 1.4 WhatsApp
- [ ] Messaggio WhatsApp diretto a numero aziendale
- [ ] Ricezione in gestionale
- [ ] Risposta automatica/agente
- [ ] Creazione lead in CRM
- [ ] Follow-up automatico su WhatsApp

### 1.5 Telegram
- [ ] Messaggio Telegram a bot aziendale
- [ ] Ricezione e qualificazione
- [ ] Inserimento in CRM
- [ ] Possibilità follow-up via Telegram

---

## 2. SITO WEB — Navigazione e Performance

### 2.1 Pagine Pubbliche
- [ ] Homepage (caricamento, CTA, chatbot)
- [ ] Servizi: Impianti Elettrici
- [ ] Servizi: Fotovoltaico
- [ ] Servizi: Pompe di Calore
- [ ] Servizi: Domotica/KNX
- [ ] Servizi: Antintrusione
- [ ] Servizi: Videosorveglianza
- [ ] Servizi: Antincendio
- [ ] Servizi: Reti Dati
- [ ] Servizi: Colonnine di Ricarica
- [ ] Servizi: Manutenzioni
- [ ] Servizi: Efficientamento Energetico
- [ ] Chi Siamo
- [ ] Portfolio/Progetti Realizzati
- [ ] Blog/News
- [ ] Contatti
- [ ] Privacy Policy
- [ ] Cookie Policy

### 2.2 Form e CTA
- [ ] Richiedi Preventivo (completo)
- [ ] Scarica Brochure
- [ ] Richiedi Sopralluogo
- [ ] Newsletter

### 2.3 Performance e Mobile
- [ ] Tempo caricamento homepage < 3s
- [ ] Tempo caricamento pagina servizio < 3s
- [ ] Responsive design mobile (iPhone, Android)
- [ ] Navigazione mobile fluida
- [ ] Form compilabile su mobile
- [ ] Chatbot accessibile su mobile

---

## 3. GESTIONALE — Inventario Moduli e Test per Ciascuno

Per ogni modulo: **CREATE / READ / UPDATE / DELETE/ARCHIVE**

### 3.1 CRM Clienti e Lead
- [ ] Creare nuovo lead da form sito
- [ ] Visualizzare lista lead
- [ ] Ricercare lead per nome/telefono/email
- [ ] Modificare dati lead (nome, indirizzo, telefono, email)
- [ ] Aggiungere allegati (preventivi, foto, documenti)
- [ ] Modificare stato lead (qualificato/non qualificato/contattato)
- [ ] Assegnare lead a agente commerciale
- [ ] Creare cliente da lead
- [ ] Aggiungere cronologia comunicazioni (email, WhatsApp, telefono)
- [ ] Visualizzare dashboard lead (contatti odierni, conversioni)
- [ ] Test su mobile: accedere a lista lead, modificare lead

### 3.2 Preventivi e Offerte
- [ ] Creare preventivo per nuovo cliente
  - Scegliere tipologia (impianto elettrico, fotovoltaico, etc.)
  - Aggiungere righe materiali e manodopera
  - Applicare sconti e margini
  - Allegare disegni/schemi tecnici (PDF)
  - Verificare calcolo totale, IVA, importi
- [ ] Visualizzare elenco preventivi (filtri: stato, data, cliente, agente)
- [ ] Modificare preventivo (aggiungi/rimuovi righe, cambia prezzi)
- [ ] Convertire preventivo → Ordine/Contratto
- [ ] Inviare preventivo a cliente via email
- [ ] Verificare ricezione email cliente
- [ ] Archiviare/eliminare preventivo
- [ ] Test mobile: consultare preventivo, aggiungere allegati

### 3.3 Ordini e Contratti
- [ ] Creare ordine da preventivo
- [ ] Creare ordine manuale (nuovo cliente)
- [ ] Allegare contratto (PDF)
- [ ] Allegare firma digitale cliente
- [ ] Modificare ordine (cambio data, importo, condizioni)
- [ ] Visualizzare cronologia ordini per cliente
- [ ] Impostare scadenze (data inizio, fine prevista)
- [ ] Verificare integrazione con cantiere
- [ ] Archiviare ordine completato
- [ ] Test mobile: consultare ordini, firma digitale

### 3.4 Cantieri e SAL (Stati Avanzamento Lavori)
- [ ] Creare cantiere da ordine
  - Indirizzo cantiere
  - Data inizio/fine prevista
  - Responsabile cantiere
  - Budget disponibile
- [ ] Creare SAL 1 (inizio lavori): verifica importo % e calcolo
- [ ] Creare SAL 2, 3, 4 (progressioni): aggiunta lavori svolti, materiali usati
- [ ] Verificare integrazione con rapportini giornalieri
- [ ] Visualizzare progresso cantiere (% completamento)
- [ ] Calcolo automatico margine cantiere (ricavi - costi)
- [ ] Allegare documentazione (POS, cronoprogramma, dichiarazioni)
- [ ] Verificare firma cliente su SAL
- [ ] Fatturazione su SAL (integrazione)
- [ ] Visualizzare scadenzario incassi SAL
- [ ] Test mobile: consultare cantieri, visualizzare SAL

### 3.5 Rapportini di Intervento
- [ ] Creare rapportino da cantiere
  - Data intervento
  - Operai (con firma digitale mobile)
  - Ore lavorate per operaio
  - Materiali usati (scaricare da magazzino)
  - Trasferta, vitto, alloggio
  - Note tecniche e foto intervento
- [ ] Verifica calcolo ore × costo manodopera
- [ ] Verifica scarico materiali da magazzino
- [ ] Verifica somma trasferta/vitto/alloggio
- [ ] Verificare totale rapportino
- [ ] Visualizzare rapportini per cantiere/operaio/data
- [ ] Firma digitale operaio su tablet/mobile
- [ ] Allegare foto intervento (prima/dopo)
- [ ] Test mobile: creare rapportino completo con firma

### 3.6 Giornale di Cantiere
- [ ] Accedere a giornale cantiere
- [ ] Aggiungere voce manuale (descrizione lavoro, data)
- [ ] Visualizzare cronologia automatica (rapportini, SAL, comunicazioni)
- [ ] Verifica collegamento rapportini → giornale
- [ ] Esportazione giornale (PDF, Excel)
- [ ] Test mobile: consultare giornale

### 3.7 Manutenzioni
- [ ] Creare manutenzione programmata (cliente + periodicità)
- [ ] Creare manutenzione ordinaria (da richiesta cliente)
- [ ] Creare manutenzione straordinaria (su cantiere esistente)
- [ ] Assegnare tecnico responsabile
- [ ] Impostare data/ora intervento
- [ ] Visualizzare calendario manutenzioni (settimanale, mensile)
- [ ] Verifica automazione: reminder cliente 24h prima
- [ ] Esecuzione manutenzione: creare rapportino
- [ ] Verifica scarico materiali
- [ ] Verifica integrazione con fatturazione
- [ ] Test mobile: consultare manutenzioni, eseguire rapportino

### 3.8 Materiali e Magazzino
- [ ] Creare nuovo articolo (codice, descrizione, prezzo unitario, giacenza)
- [ ] Aggiungere foto/scheda tecnica articolo
- [ ] Visualizzare giacenza (disponibilità reale)
- [ ] Ricercare articolo (per codice, descrizione, fornitore)
- [ ] Creare ordine acquisto fornitore
- [ ] Registrare ricezione merce da fornitore
- [ ] Scarico materiale su rapportino/cantiere
- [ ] Verifica giacenza post-scarico
- [ ] Impostare soglia minima giacenza (alert)
- [ ] Esportazione inventario
- [ ] Test mobile: consulta giacenza, ricerca articolo

### 3.9 Personale — Presenze e Geolocalizzazione
- [ ] Accesso dipendente a app mobile presenze
- [ ] Check-in inizio giornata (con geolocalizzazione)
- [ ] Check-out fine giornata
- [ ] Visualizzare tracciato GPS giornaliero
- [ ] Registrazione ore lavorate per cantiere
- [ ] Allegare foto cantiere (timestamp + localizzazione)
- [ ] Visualizzare dashboard presenze (manager)
  - Orari arrivo/partenza
  - Mappa localizzazione operai
  - Ore per cantiere
  - Presenze vs. permessi/ferie
- [ ] Test mobile: check-in/out completo con geolocalizzazione

### 3.10 Ferie, Assenze, Permessi
- [ ] Dipendente richiede ferie (date, numero giorni)
- [ ] Manager approva/nega ferie
- [ ] Verifica automatica: giorni disponibili restanti
- [ ] Registrazione assenza per malattia
- [ ] Permesso orario
- [ ] Visualizzare calendario aziendale (ferie, assenze)
- [ ] Esportazione presenze per busta paga

### 3.11 Fornitori
- [ ] Creare nuovo fornitore
  - Ragione sociale, indirizzo, CAP, città
  - Partita IVA, Codice Fiscale
  - Contatti (email, telefono, persona riferimento)
  - IBAN per pagamenti
  - Categorie merci (materiali elettrici, pompe, etc.)
  - Listini prezzi allegati
- [ ] Visualizzare lista fornitori (ricerca, filtri)
- [ ] Modificare dati fornitore
- [ ] Creare ordine fornitore
- [ ] Ricevere merci e registrare in magazzino
- [ ] Registrare fattura fornitore
- [ ] Verificare integrazione con contabilità
- [ ] Test mobile: consultare dati fornitore

### 3.12 Rete Commerciale — Agenti, Gerarchia, Provvigioni
- [ ] Creare agente commerciale
  - Nome, cognome, email, telefono
  - Zona territoriale assegnata
  - Commissione (% su vendita)
  - Target mensile/annuale
- [ ] Assegnare lead/cliente ad agente
- [ ] Visualizzare clienti per agente
- [ ] Calcolo automatico provvigioni:
  - Ricavi preventivi convertiti in ordine
  - Ricavi cantieri completati
  - Percentuale applicata
- [ ] Dashboard agente: clienti, preventivi, ordini, ricavi, provvigioni
- [ ] Gerarchia: agente → responsabile commerciale → direttore
- [ ] Visualizzare performance per livello
- [ ] Verifica integrazione con contabilità (pagamento provvigioni)

### 3.13 Subappaltatori
- [ ] Creare subappaltatore (ragione sociale, CAP, contatti, IBAN)
- [ ] Assegnare subappaltatore a cantiere
- [ ] Creare ordine subappalto (importo, lavori, scadenza)
- [ ] Registrare completamento lavori
- [ ] Fatturazione subappaltatore
- [ ] Pagamento subappaltatore
- [ ] Verifica integrazione con contabilità

### 3.14 Contabilità — Prima Nota, IVA, Scadenze
- [ ] Registrazione automatica fatture vendita (da ordini/cantieri)
- [ ] Prima nota: visualizzare entrate per mese/categoria
- [ ] Calcolo IVA (23%, 10%, 5%, esente)
- [ ] Registro IVA: partite in/out
- [ ] Liquidazione IVA mensile (calcolo automatico)
- [ ] Scadenze fiscali (dichiarazioni, versamenti)
- [ ] Bilancio (profitti e perdite per periodo)
- [ ] Registrazione fatture acquisto (fornitori)
- [ ] Verificare coerenza IVA in/out

### 3.15 SDI — Fatturazione Elettronica
- [ ] Generare fattura per cliente
  - Dati completi (ragione sociale, indirizzo, codice fiscale, etc.)
  - Righe vendita (servizi, materiali, manodopera)
  - Sconti applicati
  - IVA calcolata automaticamente
  - Importo totale
- [ ] Allegare documento in formato XML
- [ ] Invio fattura a SDI (agenzia delle entrate)
- [ ] Verifica ricezione SDI
- [ ] Email a cliente con copia fattura
- [ ] Visualizzare stato di consegna SDI
- [ ] Importazione fatture da fornitori (SDI)
- [ ] Archiviazione fatture per anno fiscale

### 3.16 Dashboard Finanziaria
- [ ] Scadenzario incassi (pagamenti attesi da clienti)
  - Importo, data scadenza, cliente
  - Status: pagato/in scadenza/scaduto
- [ ] Scadenzario pagamenti (uscite verso fornitori, stipendi, etc.)
- [ ] Cassa disponibile (saldo bancario)
- [ ] Margine per cantiere (ricavi - costi)
- [ ] Cash flow previsionale (incassi - pagamenti prossimi 30 giorni)
- [ ] Ricavi per categoria servizio (impianti, fotovoltaico, etc.)
- [ ] Costi per voce (materiali, manodopera, trasferte)
- [ ] Grafico andamento ricavi (mensile, trimestrale, annuale)
- [ ] Verifica visualizzazione dashboard su mobile

---

## 4. AUTOMAZIONI E TRIGGER

### 4.1 Canale Contatto → CRM
- [ ] Form sito → Nuovo lead in CRM (entro 5 minuti)
- [ ] Chatbot → Lead qualificato in CRM
- [ ] Email in arrivo → Nuovo lead in CRM
- [ ] WhatsApp → Nuovo lead in CRM
- [ ] Telegram → Nuovo lead in CRM

### 4.2 Lead → Preventivo
- [ ] Trigger: lead qualificato e assegnato ad agente
- [ ] Azione: reminder agente su email/WhatsApp

### 4.3 Preventivo → Ordine/Contratto
- [ ] Trigger: preventivo accettato da cliente
- [ ] Azione: creazione automatica ordine
- [ ] Azione: firma digitale richiesta a cliente
- [ ] Azione: email conferma a cliente e team

### 4.4 Ordine → Cantiere
- [ ] Trigger: ordine firmato
- [ ] Azione: creazione cantiere automatica
- [ ] Azione: notifica team (responsabile cantiere, operai assegnati)

### 4.5 Cantiere → Manutenzione Futura
- [ ] Trigger: cantiere completato (100%)
- [ ] Azione: creare manutenzione programmata (1° anno gratuito, poi annuale)
- [ ] Azione: reminder cliente manutenzione periodica

### 4.6 Manutenzione → Follow-up
- [ ] Trigger: manutenzione completata
- [ ] Azione: inviare foto intervento + fattura a cliente via email
- [ ] Azione: reminder prossima manutenzione

### 4.7 Rapportino Firmato → Cantiere
- [ ] Trigger: rapportino siglato operaio
- [ ] Azione: update automatico SAL
- [ ] Azione: aggiornamento costo cantiere

### 4.8 SAL → Fatturazione
- [ ] Trigger: SAL approvato cliente
- [ ] Azione: generazione fattura automatica (importo SAL)
- [ ] Azione: invio fattura a SDI

### 4.9 Scadenze Fiscali
- [ ] Reminder automatico: dichiarazione IVA (mese 20)
- [ ] Reminder: dichiarazione annuale redditi (maggio)
- [ ] Reminder: versamento IVA

---

## 5. SISTEMA AGENTICO SUPERVISORE

Se attivo, verificare che:
- [ ] Monitori anomalie durante stress test
- [ ] Proponga correzioni in modo non invasivo
- [ ] Passaggi per staging prima di modifiche
- [ ] Backup automatici pre-modifica
- [ ] Report anomalie rilevate

---

## 6. DATI DI TEST — Dataset Realistico

Preparare dataset per ciascun tipo di test:
- **Clienti:** 5 clienti veri (aziende) con indirizzi, partita IVA, contacts
- **Preventivi:** 3 preventivi completi (impianto, fotovoltaico, manutenzione) con importi reali
- **Cantieri:** 2 cantieri in corso, con SAL progressivi
- **Rapportini:** 10 rapportini con operai, ore, materiali, trasferte
- **Manutenzioni:** 5 manutenzioni programmate
- **Fornitori:** 5 fornitori con listini
- **Operai:** 5 dipendenti (con dati presenze, ferie)

---

## 7. VERSIONE DESKTOP vs. MOBILE

Per **ogni modulo**, ripetere test su:
- [ ] Desktop (browser Chrome/Firefox, risoluzione standard)
- [ ] Mobile (iPhone Safari, Android Chrome, app mobile se presente)
- [ ] Verifica coerenza dati (stesso dato → stesso risultato su entrambi)
- [ ] Verifica performance (caricamento rapido, niente lag)
- [ ] Verifica responsiveness (layout adattato, touchscreen usabile)

---

## 8. BACKUP e CONTROLLI PRE-STRESS TEST

- [ ] Backup completo database (produzione/staging)
- [ ] Backup completo file sito web
- [ ] Verifica ambiente di esecuzione (produzione? staging?)
- [ ] Test connectivity API esterne (SDI, banche, email, WhatsApp, Telegram)
- [ ] Elenco contatti di test (numeri WhatsApp, email, etc.)

---

## 9. ESECUZIONE E REPORT

### Fasi:
1. **Inventario reale** dei moduli nel codice
2. **Setup** dati di test e ambiente
3. **Esecuzione** test per canale/modulo (in sequenza)
4. **Registrazione** risultati (OK / Anomalia / Bloccante)
5. **Report finale** con priorità e azioni correttive

### Output Report:
```
# Stress Test Report Voltfire
Data: 2026-08-13
Ambiente: [Produzione/Staging]

## Riepilogo Esecuzione
- Canali testati: 5/5 ✓
- Moduli testati: 15/16 (✗ 1 assente)
- Test passed: 145/160
- Test failed: 15/160
- Test skipped: 0

## Criticità Aperte
1. [BLOCCANTE] Firma digitale non funziona su iOS
2. [ALTA] SAL non calcola margine correttamente
3. [MEDIA] Form sito non valida email
...

## Suggerimenti Prioritizzati
1. Fix firma digitale iOS (impatta contratti)
2. Verifica logica calcolo SAL (impatta fatturazione)
3. Validazione form email (user experience)
...

## Note Ambiente
- Test cantiere creato in staging (ragione: rischio fatturazione)
- Manutenzione in produzione (operazione leggera, reversibile)
- Email inviate a test@voltfire.it (non a clienti veri)
```

---

## Timeline
- **Fase 1** (Inventario): 1h
- **Fase 2** (Setup): 2h
- **Fase 3** (Esecuzione): 4-6h (per coprire 5 canali + 15+ moduli)
- **Fase 4** (Report): 1h

**Stima totale:** 8-10 ore per stress test completo

---

## Vincoli Operativi
- ❌ NO: Invio fatture reali a clienti veri
- ❌ NO: Pagamenti reali
- ✅ SÌ: Operazioni reali in database (record veri scritti)
- ✅ SÌ: Upload file veri (PDF, immagini)
- ✅ SÌ: Messaggi reali su canali (email, WhatsApp, Telegram a numeri di test)
- ⚠️  STAGING: Qualsiasi operazione con rischi irreversibili (fatturazione, pagamenti)
