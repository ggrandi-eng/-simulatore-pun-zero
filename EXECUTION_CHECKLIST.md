# Stress Test Execution Checklist

**Data Inizio:** 2026-08-13  
**Environment:** [Produzione / Staging]  
**Executor:** Claude Code  

---

## Pre-Stress Test (Setup)

- [ ] **Ambiente Preparato**
  - [ ] Verifica ambiente (prod/staging)
  - [ ] Verifica connettività database
  - [ ] Verifica accesso API
  - [ ] Verifica connessione email/WhatsApp/Telegram

- [ ] **Backup Completato**
  - [ ] Database backed up: `./reports/backups/voltfire_backup_*.sql`
  - [ ] File sito web backed up
  - [ ] Configurazioni backed up
  - [ ] Backup verificato (ripristino possibile)

- [ ] **Dati di Test Preparati**
  - [ ] Clienti fittizi caricati in CRM
  - [ ] Numeri/email di test configurati
  - [ ] File template PDF/immagini pronti
  - [ ] Credenziali test verificate

- [ ] **Notifiche Configurate**
  - [ ] Team notificato dell'inizio stress test
  - [ ] Monitoring attivo su ambiente
  - [ ] Escalation contacts disponibili

---

## FASE 1: Canali di Contatto (Tempo Stimato: 1-2h)

### 1.1 Chatbot
- [ ] Test homepage chatbot
- [ ] Test pagine servizi
- [ ] Verifica ricezione messaggio in CRM
- [ ] Verifica qualificazione AI lead
- [ ] Verifica creazione automatica lead nel gestionale

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 1.2 Form Bolletta/Preventivo
- [ ] Form riempito con dati azienda TEST_001
- [ ] Upload PDF bolletta (sample_invoice_1.pdf)
- [ ] Upload foto impianto (sample_photo_1.jpg)
- [ ] Verifica dati arrivati in CRM
- [ ] Verifica allegati visibili
- [ ] Verifica creazione automatica lead
- [ ] Verifica integrazione con gestionale

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 1.3 Email
- [ ] Invio email test@voltfire.it
- [ ] Verifica ricezione in inbox
- [ ] Verifica risposta automatica
- [ ] Verifica qualificazione lead
- [ ] Verifica inserimento in CRM

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 1.4 WhatsApp
- [ ] Messaggio WhatsApp da test_phone_001
- [ ] Verifica ricezione in gestionale
- [ ] Verifica risposta automatica/agente
- [ ] Verifica creazione lead in CRM
- [ ] Verifica possibilità follow-up

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 1.5 Telegram
- [ ] Messaggio Telegram a bot
- [ ] Verifica ricezione e qualificazione
- [ ] Verifica inserimento in CRM
- [ ] Verifica follow-up capabilities

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

---

## FASE 2: Sito Web (Tempo Stimato: 1-2h)

### 2.1 Navigazione Desktop
- [ ] Homepage cari correttamente (< 3s)
- [ ] Menu navigazione responsive
- [ ] Tutte le pagine servizi raggiungibili
- [ ] Link interni funzionano
- [ ] Form compilabili
- [ ] CTA visibili e cliccabili

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 2.2 Navigazione Mobile
- [ ] Test su iPhone Safari
- [ ] Test su Android Chrome
- [ ] Responsive design OK
- [ ] Touchscreen usabile
- [ ] Form compilabili da mobile
- [ ] Chatbot accessibile

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 2.3 Performance
- [ ] Tempo caricamento homepage < 3s
- [ ] Tempo caricamento pagina servizio < 3s
- [ ] Immagini ottimizzate
- [ ] CSS/JS minimizzati
- [ ] Cache funzionante

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

---

## FASE 3: Gestionale (Tempo Stimato: 4-6h)

### 3.1 CRM — Clienti e Lead ✓
- [ ] Creare nuovo lead da form sito
- [ ] Visualizzare lista lead
- [ ] Ricerca lead (nome, telefono, email)
- [ ] Modificare dati lead
- [ ] Aggiungere allegati (PDF, foto)
- [ ] Assegnare lead ad agente
- [ ] Visualizzare cronologia comunicazioni
- [ ] Test mobile: consultare lead, modificare

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 3.2 Preventivi e Offerte ✓
- [ ] Creare preventivo (impianto elettrico)
- [ ] Aggiungere righe materiali e manodopera
- [ ] Applicare sconti
- [ ] Allegare schemi tecnici (PDF)
- [ ] Verifica calcolo totale e IVA
- [ ] Modificare preventivo
- [ ] Convertire preventivo → Ordine
- [ ] Inviare preventivo a cliente via email
- [ ] Archiviare preventivo
- [ ] Test mobile: consultare preventivo

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 3.3 Ordini e Contratti ✓
- [ ] Creare ordine da preventivo
- [ ] Allegare contratto (PDF)
- [ ] Firma digitale cliente
- [ ] Modificare ordine
- [ ] Visualizzare cronologia ordini
- [ ] Archiviare ordine completato
- [ ] Test mobile: firma digitale

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 3.4 Cantieri e SAL ✓
- [ ] Creare cantiere da ordine
- [ ] Creare SAL 1 (inizio)
- [ ] Creare SAL 2, 3 (progressioni)
- [ ] Verificare integrazione con rapportini
- [ ] Visualizzare progresso cantiere (%)
- [ ] Calcolo margine automatico
- [ ] Allegare documentazione (POS, cronoprogramma)
- [ ] Firma cliente su SAL
- [ ] Test mobile: consultare cantieri

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 3.5 Rapportini di Intervento ✓
- [ ] Creare rapportino da cantiere
- [ ] Aggiungere operai con ore
- [ ] Scaricare materiali da magazzino
- [ ] Aggiungere trasferta/vitto/alloggio
- [ ] Verifica calcoli ore × costo
- [ ] Verifica scarico materiali
- [ ] Firma digitale operaio su mobile
- [ ] Allegare foto intervento
- [ ] Verifica totale rapportino

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 3.6 Giornale di Cantiere ✓
- [ ] Accedere a giornale cantiere
- [ ] Aggiungere voce manuale
- [ ] Verificare cronologia automatica (rapportini, SAL)
- [ ] Esportare giornale (PDF, Excel)
- [ ] Test mobile: consultare giornale

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 3.7 Manutenzioni ✓
- [ ] Creare manutenzione programmata
- [ ] Creare manutenzione ordinaria
- [ ] Creare manutenzione straordinaria
- [ ] Visualizzare calendario manutenzioni
- [ ] Verifica automation reminder cliente
- [ ] Esecuzione manutenzione (rapportino)
- [ ] Verifica integrazione fatturazione
- [ ] Test mobile: consultare manutenzioni

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 3.8 Materiali e Magazzino ✓
- [ ] Creare articolo (codice, prezzo, giacenza)
- [ ] Ricercare articolo
- [ ] Visualizzare giacenza
- [ ] Creare ordine fornitore
- [ ] Registrare ricezione merce
- [ ] Scarico materiale su rapportino
- [ ] Verifica giacenza post-scarico
- [ ] Test mobile: consulta giacenza

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 3.9 Personale — Presenze
- [ ] Check-in inizio giornata (mobile)
- [ ] Verifica geolocalizzazione
- [ ] Check-out fine giornata
- [ ] Registrazione ore per cantiere
- [ ] Allegare foto cantiere (GPS + timestamp)
- [ ] Visualizzare dashboard presenze
- [ ] Mappa localizzazione operai
- [ ] Tracciato GPS giornaliero

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 3.10 Ferie e Assenze ✓
- [ ] Richiedere ferie (dipendente)
- [ ] Approvare ferie (manager)
- [ ] Verifica giorni disponibili
- [ ] Registrare malattia
- [ ] Permesso orario
- [ ] Calendario aziendale

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 3.11 Fornitori ✓
- [ ] Creare fornitore
- [ ] Visualizzare lista fornitori
- [ ] Modificare dati fornitore
- [ ] Creare ordine fornitore
- [ ] Ricevere merce e registrare magazzino
- [ ] Registrare fattura fornitore
- [ ] Integrazione contabilità
- [ ] Test mobile: consultare fornitore

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 3.12 Rete Commerciale ✓
- [ ] Creare agente commerciale
- [ ] Assegnare lead/cliente ad agente
- [ ] Visualizzare clienti per agente
- [ ] Calcolo automatico provvigioni
- [ ] Dashboard agente (ricavi, provvigioni)
- [ ] Gerarchia commerciale
- [ ] Pagamento provvigioni

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 3.13 Subappaltatori ✓
- [ ] Creare subappaltatore
- [ ] Assegnare a cantiere
- [ ] Creare ordine subappalto
- [ ] Registrare completamento
- [ ] Fatturazione e pagamento

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 3.14 Contabilità — Prima Nota, IVA ✓
- [ ] Registrazione fatture vendita (auto)
- [ ] Visualizzare entrate per mese
- [ ] Calcolo IVA (23%, 10%, 5%)
- [ ] Registro IVA partite
- [ ] Liquidazione IVA mensile
- [ ] Visualizzare scadenze fiscali

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 3.15 SDI — Fatturazione Elettronica ✓
- [ ] Generare fattura cliente
- [ ] Verificare dati completi
- [ ] Invio a SDI
- [ ] Verifica ricezione SDI
- [ ] Email cliente con copia fattura
- [ ] Importazione fatture fornitori (SDI)
- [ ] Archiviazione per anno fiscale

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 3.16 Dashboard Finanziaria ✓
- [ ] Scadenzario incassi (pagamenti attesi)
- [ ] Scadenzario pagamenti (uscite)
- [ ] Cassa disponibile
- [ ] Margine per cantiere
- [ ] Cash flow previsionale (30 giorni)
- [ ] Ricavi per categoria servizio
- [ ] Grafico andamento ricavi
- [ ] Test mobile: consultare dashboard

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 3.17 Costi Aziendali ✓
- [ ] Creare voce costo (carburante, affitto, etc.)
- [ ] Assegnare a cantiere
- [ ] Categorizzare spesa
- [ ] Allegare ricevuta
- [ ] Visualizzare report costi per cantiere
- [ ] Verificare impatto su margine cantiere

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 3.18 Campagne Commerciali ✓
- [ ] Creare campagna (nome, budget, periodo)
- [ ] Selezionare lead/clienti target
- [ ] Allegare materiale marketing
- [ ] Invio email/WhatsApp personalizzati
- [ ] Tracking aperture e clic
- [ ] Monitoraggio risposte e lead generati
- [ ] Calcolo ROI

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 3.19 Appuntamenti e Agenda ✓
- [ ] Creare appuntamento (sopralluogo, riunione)
- [ ] Assegnare responsabile
- [ ] Aggiungere indirizzo con GPS
- [ ] Invio reminder automatico (24h + 1h)
- [ ] Email di conferma con mappa
- [ ] Notifica mobile a responsabile
- [ ] Post-appuntamento: foto + esito
- [ ] Sincronizzazione Outlook/Google Calendar

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 3.20 Agenti in Rete — Commerciale Dettagliato ✓
- [ ] Creare agente (nome, zona, commissione %)
- [ ] Dashboard agente: clienti, lead, preventivi, ordini
- [ ] Performance tracking (ricavi vs target)
- [ ] Ranking tra agenti
- [ ] Calcolo automatico provvigioni
- [ ] Integrazione payroll (provvigioni in busta)
- [ ] Bonus performance automatico
- [ ] Storico provvigioni per anno

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 3.21 Subappaltatori — Progetti Specializzati ✓
- [ ] Creare ordine subappalto (specialità + cantiere)
- [ ] Allegare schema tecnico e capitolato
- [ ] Invio ordine a subappaltatore
- [ ] Tracking: registro completamento (data, foto, firma)
- [ ] Integrazione costi cantiere
- [ ] Fatturazione automatica
- [ ] Pagamento tracciato
- [ ] Nel CRM cliente: cronologia subappalti

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 3.22 Reclami e Ticket ✓
- [ ] Cliente segnala problema
- [ ] Ticket creato automaticamente (ID, urgenza)
- [ ] Assegnazione automatica a tecnico
- [ ] Workflow: Aperto → Analisi → Riparazione → Risolto
- [ ] Tecnico registra intervento (data, foto, firma mobile)
- [ ] Rapportino creato automaticamente da ticket
- [ ] Email cliente: "Ticket risolto"
- [ ] Report: quanti ticket aperti/risolti
- [ ] SLA tracking: tempo risoluzione medio

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 3.23 Gemello Digitale Impianto ✓
- [ ] Portale cliente: visualizzare impianti installati
- [ ] Per ogni impianto: modello, numero serie, foto, garanzia
- [ ] Manuali tecnici e video
- [ ] Storico manutenzioni (date, interventi, tecnico)
- [ ] Manutenzione programmata (reminder)
- [ ] Contratti attivi
- [ ] Foto cantiere (before/after)
- [ ] Contatti supporto 24/7
- [ ] Cliente richiede manutenzione "1 clic"

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

### 3.24 Documentazione e Contratti Centralizzati ✓
- [ ] Repository per cantiere: preventivi, contratti, POS
- [ ] Cronoprogramma, dichiarazioni (CE, ASL, APE)
- [ ] Foto cantiere (prima/durante/dopo)
- [ ] SAL (tutti gli stati)
- [ ] Fatture (XML SDI)
- [ ] Rapportini (con firma)
- [ ] Ricerca veloce per tipo/data/cliente
- [ ] Download bulk (ZIP con tutto)
- [ ] Versioning: storico modifiche
- [ ] Firma digitale verificabile (timestamp, chi ha firmato)
- [ ] Export per audit

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

---

## FASE 4: Automazioni e Trigger (Tempo Stimato: 1-2h)

- [ ] Form sito → Lead in CRM (entro 5 min)
- [ ] Chatbot → Lead qualificato
- [ ] Lead qualificato → Reminder agente
- [ ] Preventivo accettato → Ordine auto
- [ ] Ordine firmato → Cantiere auto
- [ ] Cantiere completato → Manutenzione periodica
- [ ] Manutenzione completata → Foto + fattura a cliente
- [ ] Rapportino firmato → Update SAL
- [ ] SAL approvato → Fattura auto
- [ ] Reminder fiscali automatici

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

---

## FASE 5: Sistema Agentico Supervisore (Tempo Stimato: 30 min)

- [ ] Sistema monitoraggio attivo
- [ ] Rileva anomalie da stress test
- [ ] Propone correzioni (non invasive)
- [ ] Passaggi staging prima modifiche
- [ ] Backup automatici pre-modifica
- [ ] Report anomalie rilevate

**Status:** ⏳ Non iniziato  
**Risultato:** ___________  
**Note:** ___________

---

## Post-Stress Test (Reporting)

- [ ] **Raccolta Risultati**
  - [ ] File risultati generati: `./reports/stress_test_results_*.json`
  - [ ] Log completi salvati
  - [ ] Anomalie documentate

- [ ] **Generazione Report**
  - [ ] Report markdown generato: `./reports/STRESS_TEST_REPORT.md`
  - [ ] Statistiche calcolate (success rate, etc.)
  - [ ] Criticità prioritizzate

- [ ] **Analisi Criticità**
  - [ ] Criticità BLOCCANTE identificate e documentate
  - [ ] Criticità ALTA analizzate
  - [ ] Suggerimenti prioritizzati

- [ ] **Cleanup**
  - [ ] Record di test rimossi da CRM
  - [ ] Lead fittizi eliminati
  - [ ] Cantieri test archiviati
  - [ ] Database ripulito

- [ ] **Notifica Team**
  - [ ] Report inviato a stakeholders
  - [ ] Call/meeting di debriefing programmato
  - [ ] Action items assegnati

---

## Risultati Finali

**Data Completamento:** ___________  
**Durata Totale:** ___________  
**Ambiente Utilizzato:** ⚫ Produzione ⚫ Staging  
**Success Rate:** ___________  
**Criticità Aperte:** ___________  

### Riepilogo per Fase

| Fase | Test Totali | OK | FAIL | WARN | Success % |
|------|-------------|----|----|------|-----------|
| Canali Contatto | ? | ? | ? | ? | ? |
| Sito Web | ? | ? | ? | ? | ? |
| Gestionale | ? | ? | ? | ? | ? |
| Automazioni | ? | ? | ? | ? | ? |
| Agentico | ? | ? | ? | ? | ? |
| **TOTALE** | ? | ? | ? | ? | ? |

### Criticità Prioritarie

1. _________________________________
2. _________________________________
3. _________________________________

### Prossimi Passi

1. _________________________________
2. _________________________________
3. _________________________________

---

**Stress Test Completato con Successo ✓**
