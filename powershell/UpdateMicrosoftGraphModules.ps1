# Purpose: Update the modules used in Powershell 5
Get-InstalledModule Microsoft.Graph* | ForEach-Object {
    Write-Host "Updating $($_.Name)..."
    Update-Module -Name $_.Name
}
