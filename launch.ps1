<# Disable Windows Defender #>
Set-MpPreference -DisableRealtimeMonitoring $true

<# Start Attack App #>
$attackApp = Get-Process ironcat_attack
if ( -not $attackApp ) {
    Start-Process -FilePath "C:\Program Files\psattack\ironcat_attack.exe" -WorkingDirectory "C:\Program Files\psattack\" -WindowStyle Hidden
}

<# Start Firefox #>
Start-Process -FilePath "C:\Program Files\Mozilla Firefox\firefox.exe" -ArgumentList "-new-window localhost:28657/endpoint.html" -WorkingDirectory "C:\Program Files\Mozilla Firefox\" -WindowStyle Hidden 
