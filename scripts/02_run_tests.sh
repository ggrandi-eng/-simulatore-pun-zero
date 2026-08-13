#!/bin/bash
# Script orchestrazione stress test Voltfire
# Esegue tutti i test in sequenza e registra risultati

set -e

TEST_DIR="./tests"
REPORT_DIR="./reports"
RESULTS_FILE="$REPORT_DIR/stress_test_results_$(date +%Y%m%d_%H%M%S).json"

mkdir -p "$REPORT_DIR"

echo "=========================================="
echo "VOLTFIRE STRESS TEST — Inizio $(date)"
echo "=========================================="
echo ""

# Funzione per registrare risultato
log_result() {
    local test_name=$1
    local status=$2
    local message=$3
    echo "{\"test\": \"$test_name\", \"status\": \"$status\", \"message\": \"$message\", \"timestamp\": \"$(date -u +%Y-%m-%dT%H:%M:%SZ)\"}" >> "$RESULTS_FILE"
    echo "[$status] $test_name: $message"
}

# ====== FASE 1: CANALI DI CONTATTO ======
echo "[FASE 1] Canali di Contatto"
echo "========================================"

if [ -f "$TEST_DIR/contact_channels/chatbot.sh" ]; then
    bash "$TEST_DIR/contact_channels/chatbot.sh" && \
        log_result "chatbot" "OK" "Chatbot testato con successo" || \
        log_result "chatbot" "FAIL" "Errore nel test chatbot"
fi

if [ -f "$TEST_DIR/contact_channels/form_submission.sh" ]; then
    bash "$TEST_DIR/contact_channels/form_submission.sh" && \
        log_result "form_submission" "OK" "Form submission testato" || \
        log_result "form_submission" "FAIL" "Errore nel test form"
fi

if [ -f "$TEST_DIR/contact_channels/email.sh" ]; then
    bash "$TEST_DIR/contact_channels/email.sh" && \
        log_result "email_channel" "OK" "Canale email testato" || \
        log_result "email_channel" "FAIL" "Errore nel test email"
fi

if [ -f "$TEST_DIR/contact_channels/whatsapp.sh" ]; then
    bash "$TEST_DIR/contact_channels/whatsapp.sh" && \
        log_result "whatsapp_channel" "OK" "Canale WhatsApp testato" || \
        log_result "whatsapp_channel" "FAIL" "Errore nel test WhatsApp"
fi

if [ -f "$TEST_DIR/contact_channels/telegram.sh" ]; then
    bash "$TEST_DIR/contact_channels/telegram.sh" && \
        log_result "telegram_channel" "OK" "Canale Telegram testato" || \
        log_result "telegram_channel" "FAIL" "Errore nel test Telegram"
fi

echo ""

# ====== FASE 2: SITO WEB ======
echo "[FASE 2] Sito Web"
echo "========================================"

if [ -f "$TEST_DIR/website/navigation.sh" ]; then
    bash "$TEST_DIR/website/navigation.sh" && \
        log_result "website_navigation" "OK" "Navigazione sito testata" || \
        log_result "website_navigation" "FAIL" "Errore navigazione"
fi

if [ -f "$TEST_DIR/website/performance.sh" ]; then
    bash "$TEST_DIR/website/performance.sh" && \
        log_result "website_performance" "OK" "Performance sito OK" || \
        log_result "website_performance" "WARN" "Problemi di performance"
fi

if [ -f "$TEST_DIR/website/mobile.sh" ]; then
    bash "$TEST_DIR/website/mobile.sh" && \
        log_result "website_mobile" "OK" "Responsive design OK" || \
        log_result "website_mobile" "FAIL" "Problemi responsive"
fi

echo ""

# ====== FASE 3: GESTIONALE ======
echo "[FASE 3] Gestionale — Moduli"
echo "========================================"

# Creo placeholder per i test moduli
for module in crm preventivi ordini cantieri rapportini manutenzioni materiali personale fornitori rete_commerciale contabilita dashboard automazioni; do
    if [ -f "$TEST_DIR/gestionale/${module}.sh" ]; then
        bash "$TEST_DIR/gestionale/${module}.sh" && \
            log_result "gestionale_${module}" "OK" "Modulo $module testato" || \
            log_result "gestionale_${module}" "FAIL" "Errore nel modulo $module"
    fi
done

echo ""

# ====== FASE 4: SISTEMA AGENTICO ======
echo "[FASE 4] Sistema Agentico Supervisore"
echo "========================================"

if [ -f "$TEST_DIR/agentic_system/monitoring.sh" ]; then
    bash "$TEST_DIR/agentic_system/monitoring.sh" && \
        log_result "agentic_monitoring" "OK" "Sistema agentico attivo" || \
        log_result "agentic_monitoring" "WARN" "Sistema agentico inattivo"
fi

echo ""
echo "=========================================="
echo "✓ STRESS TEST COMPLETATO — $(date)"
echo "=========================================="
echo ""
echo "Risultati salvati in: $RESULTS_FILE"
echo ""
