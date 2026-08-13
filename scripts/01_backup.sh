#!/bin/bash
# Backup completo database e file sito Voltfire
# Eseguire PRIMA dello stress test

set -e

BACKUP_DIR="./reports/backups"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_NAME="voltfire_backup_${TIMESTAMP}"

mkdir -p "$BACKUP_DIR"

echo "=========================================="
echo "VOLTFIRE BACKUP — Inizio $(date)"
echo "=========================================="

# 1. Backup Database (PostgreSQL)
echo ""
echo "[1/3] Backup database PostgreSQL..."
if command -v pg_dump &> /dev/null; then
    pg_dump -U voltfire_user voltfire_db > "$BACKUP_DIR/${BACKUP_NAME}_db.sql" 2>/dev/null
    echo "✓ Database backed up: ${BACKUP_NAME}_db.sql"
else
    echo "⚠ pg_dump non trovato. Saltare backup database."
fi

# 2. Backup File Sito Web
echo ""
echo "[2/3] Backup file sito web..."
if [ -d "/var/www/voltfire" ]; then
    tar -czf "$BACKUP_DIR/${BACKUP_NAME}_website.tar.gz" /var/www/voltfire/ 2>/dev/null
    echo "✓ Sito web backed up: ${BACKUP_NAME}_website.tar.gz"
else
    echo "⚠ Directory sito web non trovata."
fi

# 3. Backup Configurazioni
echo ""
echo "[3/3] Backup configurazioni..."
if [ -d "/etc/voltfire" ]; then
    tar -czf "$BACKUP_DIR/${BACKUP_NAME}_config.tar.gz" /etc/voltfire/ 2>/dev/null
    echo "✓ Configurazioni backed up: ${BACKUP_NAME}_config.tar.gz"
fi

echo ""
echo "=========================================="
echo "✓ BACKUP COMPLETATO — $(date)"
echo "=========================================="
echo ""
echo "File di backup salvati in: $BACKUP_DIR"
echo ""
echo "Per ripristinare:"
echo "  Database:  psql -U voltfire_user voltfire_db < ${BACKUP_NAME}_db.sql"
echo "  Website:   tar -xzf ${BACKUP_NAME}_website.tar.gz -C /"
echo ""
