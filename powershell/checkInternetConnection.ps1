# Purpose: Tests internet connectivity by pinging a reliable server.

# Server to ping
$server = "8.8.8.8"  # Google's public DNS

# Test connection
try {
    $ping = Test-Connection -ComputerName $server -Count 2 -Quiet
    if ($ping) {
        Write-Host "Internet connection is active." -ForegroundColor Green
    } else {
        Write-Host "No internet connection detected." -ForegroundColor Red
    }
} catch {
    Write-Host "Error checking connection: $_" -ForegroundColor Red
}
