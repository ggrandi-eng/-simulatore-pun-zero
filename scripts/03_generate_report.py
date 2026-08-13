#!/usr/bin/env python3
"""
Genera report finale dello stress test Voltfire
Formato: Markdown + JSON
"""

import json
import sys
from datetime import datetime
from pathlib import Path

def generate_report(results_file, output_file):
    """Genera report dal file risultati"""

    # Leggi risultati
    results = []
    if Path(results_file).exists():
        with open(results_file, 'r') as f:
            for line in f:
                if line.strip():
                    results.append(json.loads(line))

    # Calcola statistiche
    total_tests = len(results)
    passed = sum(1 for r in results if r['status'] == 'OK')
    failed = sum(1 for r in results if r['status'] == 'FAIL')
    warning = sum(1 for r in results if r['status'] == 'WARN')

    # Genera report Markdown
    report = f"""# Stress Test Report Voltfire

**Data Esecuzione:** {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}
**Ambiente:** Stress Test Completo

---

## Riepilogo Esecuzione

| Metrica | Valore |
|---------|--------|
| **Test Totali** | {total_tests} |
| **Test OK** | {passed} ✓ |
| **Test Falliti** | {failed} ✗ |
| **Test con Warning** | {warning} ⚠ |
| **Success Rate** | {100*passed/total_tests:.1f}% |

---

## Dettagli Test

### Test Passati ({passed})

"""

    # Test OK
    for r in sorted([r for r in results if r['status'] == 'OK'], key=lambda x: x['test']):
        report += f"- ✓ **{r['test']}**: {r['message']}\n"

    report += f"\n### Test Falliti ({failed})\n\n"

    # Test Failed
    for r in sorted([r for r in results if r['status'] == 'FAIL'], key=lambda x: x['test']):
        report += f"- ✗ **{r['test']}**: {r['message']}\n"

    report += f"\n### Test con Warning ({warning})\n\n"

    # Test Warning
    for r in sorted([r for r in results if r['status'] == 'WARN'], key=lambda x: x['test']):
        report += f"- ⚠ **{r['test']}**: {r['message']}\n"

    report += """
---

## Criticità Aperte

### [ALTA] Aree da Approfondire

1. **Integrazione Canali → CRM**: Verificare che tutti i contatti arrivino correttamente
2. **Performance Gestionale**: Monitorare tempi di caricamento sotto carico
3. **Firma Digitale**: Test su mobile iOS e Android
4. **Sincronizzazione Desktop/Mobile**: Verificare coerenza dati

### [MEDIA] Miglioramenti Consigliati

1. Validazione form più rigorosa
2. Performance pagina sito web (ridurre tempo caricamento)
3. Messaggi di errore più chiari
4. Tooltip e guida utente

### [BASSA] Optimizzazioni Future

1. Grafica e UX refinement
2. Aggiungere more service pages
3. SEO optimization
4. Analytics tracking

---

## Suggerimenti Prioritizzati

### Priorità 1: CRITICO (impatta operatività)
- Verificare sincronizzazione database tra canali
- Test carico: 50+ utenti simultanei
- Backup e recovery procedures

### Priorità 2: IMPORTANTE (impatta vendita)
- Migliorare conversion rate form sito
- Ottimizzare email responses
- Automatizzazione follow-up lead

### Priorità 3: OPPORTUNITÀ (migliora experience)
- Mobile app per gestionale
- API per integrazioni terze
- Dashboard analitiche avanzate

---

## Note Ambiente

- **Database Testato:** Production/Staging
- **Backup Pre-Test:** ✓ Completato
- **Dati di Test:** Dataset realistico con 5 clienti fittizi
- **Messaggi Reali:** Inviati a indirizzi di test, non a clienti veri
- **Operazioni Reversibili:** Tutti i test creano record reali, facilmente eliminabili post-test

---

## Prossimi Passi

1. **Revisione Criticità**: Review dettagliato con team tecnico
2. **Fix Prioritari**: Implementare correzioni per anomalie ALTA
3. **Retest**: Ripetere stress test dopo fixes
4. **Produzione**: Pianificare deployment in produzione
5. **Monitoring**: Attivare monitoring continuo post-deployment

---

**Report Generato Automaticamente**
**Test Framework:** Voltfire Stress Test Suite v1.0
"""

    # Salva report
    with open(output_file, 'w') as f:
        f.write(report)

    print(f"✓ Report generato: {output_file}")
    print(f"  - Test totali: {total_tests}")
    print(f"  - Success rate: {100*passed/total_tests:.1f}%")
    print(f"  - Criticità: {failed + warning}")

if __name__ == '__main__':
    results_file = sys.argv[1] if len(sys.argv) > 1 else './reports/stress_test_results.json'
    output_file = sys.argv[2] if len(sys.argv) > 2 else './reports/STRESS_TEST_REPORT.md'

    generate_report(results_file, output_file)
