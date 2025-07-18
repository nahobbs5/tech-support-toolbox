#Purpose: Restart the Print Spooler service to resolve common printing issues

Get-Service -Name spooler | Restart-Service
Write-Host "Print Spooler service restarted successfully."
