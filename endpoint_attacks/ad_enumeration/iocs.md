# Active Directory Enumeration IOCs

- Event logs in Microsoft-Windows-Sysmon/Operational with Event Code 1 will show items with "nltest" in the message.
- Additionally, the fact that the parent process is not being run by a Domain Administrator (pslearner) but has Domain Administrator user credentials (ralthor) to run the childx command process is a red flag and worth further investigation.