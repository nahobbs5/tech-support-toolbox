# Tech Support Toolbox
This repository contains a collection of PowerShell and Bash scripts designed to automate common IT support, help desk, and Tier 1 tasks.

## Prerequisites

- **PowerShell Scripts**: Requires PowerShell 5.1 or later on Windows 10/11 or Windows Server. Some scripts require administrative privileges.
- **Bash Scripts**: Supported natively on all major Linux distributions and MacOS. Can be used in Windows using WSL, Git Bash (lightweight Bash shell bundled with Git for Windows), Cygwin (adds a Unix-like environment and Bash to Windows), or MSYS2 (another Unix-like Bash environment for Windows)

## Scripts Included

### PowerShell
- Apps to Update (Uses the winget package manager to update listed apps)
- Map a network drive
- Restart print spooler

### Bash
- Apt Update Tool: for use in Linux Distros that use Snap, e.g. Ubuntu, KDE Neon, Manjaro Linux, Solus, Zorin OS, and Mint (if snapd is enabled)

## License

This project is licensed under the MIT License. See the LICENSE file for details.
