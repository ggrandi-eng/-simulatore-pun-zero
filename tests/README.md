# Test Suite Voltfire Stress Test

Questa directory contiene i test per lo stress test completo della piattaforma Voltfire.

## Struttura

```
tests/
├── contact_channels/    # Test per chatbot, form, email, WhatsApp, Telegram
├── website/             # Test navigazione, performance, mobile
├── gestionale/          # Test moduli gestionale (CRM, preventivi, cantieri, etc.)
└── agentic_system/      # Test sistema agentico supervisore
```

## Come Scrivere un Test

### Template Test Bash

```bash
#!/bin/bash
# Test: Descrizione breve
# Obiettivo: Cosa testa
# Expected: Risultato atteso

set -e

TEST_NAME="test_name"
echo "Esecuzione test: $TEST_NAME"

# Setup
# ... preparazione dati di test

# Execution
# ... esecuzione test

# Verification
# ... verifica risultato

# Cleanup (opzionale)
# ... pulizia dati

# Result
if [ $? -eq 0 ]; then
    echo "✓ $TEST_NAME PASSED"
    exit 0
else
    echo "✗ $TEST_NAME FAILED"
    exit 1
fi
```

### Funzioni Comuni

#### Verificare API

```bash
check_api_endpoint() {
    local url=$1
    local expected_status=$2

    response=$(curl -s -o /dev/null -w "%{http_code}" "$url")
    if [ "$response" -eq "$expected_status" ]; then
        return 0
    else
        echo "API Error: Expected $expected_status, got $response"
        return 1
    fi
}
```

#### Verificare Database

```bash
check_db_record() {
    local query=$1
    local expected_count=$2

    count=$(psql -U voltfire_user voltfire_db -t -c "$query" | wc -l)
    if [ "$count" -eq "$expected_count" ]; then
        return 0
    else
        echo "DB Error: Expected $expected_count records, got $count"
        return 1
    fi
}
```

## Linee Guida Test

### ✓ Buone Pratiche

1. **Ogni test deve essere indipendente** - Deve poter funzionare isolatamente
2. **Dati di test realistici** - Usa dati da `./data/` per coerenza
3. **Cleanup post-test** - Ripulisci record di test creati
4. **Logging dettagliato** - Registra ogni passo per debugging
5. **Timeout sui test** - Evita hang infiniti

### ✗ Anti-Pattern

1. **Test dipendenti** - Non aspettare risultati di altri test
2. **Dati hardcoded** - Usa file JSON in ./data/
3. **No cleanup** - Sporcare il database tra test
4. **Output silenzioso** - Sempre registra cosa stai facendo
5. **Test troppo lungo** - Mantieni < 2 minuti per test

## Esecuzione

### Eseguire Tutti i Test

```bash
bash ./scripts/02_run_tests.sh
```

### Eseguire Test Specifico

```bash
bash ./tests/contact_channels/chatbot.sh
bash ./tests/gestionale/crm.sh
```

### Eseguire Test con Debug

```bash
bash -x ./tests/contact_channels/email.sh
```

## Risultati e Report

I risultati sono salvati in:
- **Raw Results**: `./reports/stress_test_results_*.json`
- **HTML Report**: `./reports/STRESS_TEST_REPORT.md`

Genera report:

```bash
python3 ./scripts/03_generate_report.py
```

## Dati di Test Disponibili

Usa i file in `./data/` per test coerenti:

- `test_clients.json` - 5 clienti fittizi con dati realistici
- `test_quotes.json` - 3 preventivi di diverse tipologie
- `test_worksites.json` - 2 cantieri in stati differenti
- `test_reports.json` - Rapportini giornalieri con firme
- `test_maintenance.json` - 3 manutenzioni (preventiva, ordinaria, straordinaria)
- `test_suppliers.json` - 5 fornitori specializzati
- `test_employees.json` - 9 dipendenti (operai, agenti, manager)
- `test_contacts.json` - Numeri e email per test canali

## Environment Variables

```bash
# Database
export DB_HOST=localhost
export DB_PORT=5432
export DB_NAME=voltfire
export DB_USER=voltfire_user
export DB_PASSWORD=your_password

# API
export API_URL=https://voltfire.local/api
export API_KEY=your_api_key

# Canali di Comunicazione
export WHATSAPP_API_URL=https://api.whatsapp.com
export TELEGRAM_BOT_TOKEN=your_token
export EMAIL_SMTP=smtp.voltfire.local

# Environment
export TEST_ENV=staging  # o "production"
```

## Troubleshooting

### Errore di Connessione Database

```bash
# Verifica connessione
psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c "SELECT 1;"

# Verifica credenziali
echo "Host: $DB_HOST"
echo "User: $DB_USER"
echo "Database: $DB_NAME"
```

### Errore API

```bash
# Test endpoint
curl -v $API_URL/health

# Verifica token
echo "Token: $API_KEY"
```

### Timeout Test

```bash
# Aumenta timeout nei test
TIMEOUT=60  # secondi
timeout $TIMEOUT your_command
```

## Best Practices

1. **Sempre fare backup prima** - `bash ./scripts/01_backup.sh`
2. **Testare in staging first** - Production dopo validazione
3. **Logging incrementale** - Append a file, mai overwrite
4. **Dati isolati** - Usa prefisso "TEST_" per record
5. **Notifications** - Alert se test critico fallisce
6. **Performance** - Monitora tempi, registra anomalie
7. **Documentation** - Mantieni README aggiornato

---

**Suite di Test per Voltfire Stress Testing v1.0**
