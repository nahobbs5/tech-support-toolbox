$appsToUpdate = @(
    # Your App Here
    "Zoom.Zoom",
    "Discord.Discord",
    "Ollama.Ollama",
    "OpenWhisperSystems.Signal",
    "Microsoft.PowerShell"   
)

foreach ($app in $appsToUpdate) {
    winget  upgrade --id $app --accept-package-agreements --silent
}
