# Microsoft 365 Uninstaller & Cleanup (PowerShell)

This PowerShell script automates the uninstallation of **Microsoft 365 / Office** and cleans up any leftover installer files in `C:\Windows\Temp\OfficeInstall`.

---

## Features

- Detects all Microsoft 365 installations on the system via the Windows registry.
- Performs silent uninstallation (`DisplayLevel=False`).
- Removes leftover temporary installer files.
- Provides detailed console output of actions performed.

---

## Requirements

- **Operating System:** Windows 7 or later / Windows Server 2008 R2 or later.
- **PowerShell:** Version 2.0 or higher.
- **Administrator privileges** are required to uninstall Office and delete files in `C:\Windows\Temp`.

---

## Usage

1. Open **PowerShell as Administrator**.
2. Save the script as, for example, `Uninstall-M365.ps1`.
3. Run the script:

```powershell
.\Uninstall-M365.ps1

