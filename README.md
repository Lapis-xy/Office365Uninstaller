# Microsoft 365 Uninstaller & Cleanup (PowerShell)

Questo script PowerShell automatizza la disinstallazione di **Microsoft 365 / Office** e pulisce eventuali file residui temporanei presenti in `C:\Windows\Temp\OfficeInstall`.

---

## Funzionalità

- Rileva tutte le installazioni di Microsoft 365 presenti sul sistema tramite il registro di Windows.
- Esegue la disinstallazione in modalità silenziosa (`DisplayLevel=False`).
- Rimuove eventuali file temporanei lasciati dall’installer in `C:\Windows\Temp\OfficeInstall`.
- Mostra log dettagliati delle operazioni eseguite.

---

## Requisiti

- **Sistema operativo**: Windows 7 o superiore / Windows Server 2008 R2 o superiore.
- **PowerShell**: compatibile con PowerShell 2.0 o superiore.
- Permessi amministrativi per eseguire la disinstallazione e la rimozione di file in `C:\Windows\Temp`.

---

## Uso

1. Aprire **PowerShell come amministratore**.
2. Salvare lo script in un file, ad esempio `Uninstall-M365.ps1`.
3. Eseguire lo script:

```powershell
.\Uninstall-M365.ps1
