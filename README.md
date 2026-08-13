# Stress Test End-to-End Voltfire

Progetto di stress test completo e **reale** della piattaforma Voltfire, coprendo:
- Canali di contatto (chatbot, form, email, WhatsApp, Telegram)
- Sito web (navigazione, form, performance, mobile)
- Gestionale (tutti i moduli)
- Sistema agentico supervisore

## Stato
Creato: 2026-08-13
Branch: `claude/voltfire-stress-test-vkfyje`

## Struttura
```
├── README.md                    # Questo file
├── PLAN.md                      # Piano di esecuzione dettagliato
├── tests/                       # Test automation
│   ├── contact_channels/        # Test canali di contatto
│   ├── website/                 # Test sito web
│   ├── gestionale/              # Test gestionale (moduli)
│   └── agentic_system/          # Test sistema agentico
├── data/                        # Dati di test (realistici)
├── reports/                     # Report di output
└── scripts/                     # Script di supporto (backup, setup, cleanup)
```

## Vincoli
- Backup completo prima di iniziare
- Test reali nel database (produzione o staging isolato)
- Nessun dato di test mostrato a clienti veri
- Effetti irreversibili eseguiti in staging
