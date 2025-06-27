#This script will run and call a second Cleanup.ps1 script that is triggered daily at 9AM machine local time - if you clone this, make sure to change the script location.

$Action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-File C:\Users\Shyj1\Scripts\Cleanup.ps1"
$Trigger = New-ScheduledTaskTrigger -Daily -At 9am
Register-ScheduledTask -TaskName "DailyCleanup" -Action $Action -Trigger $Trigger -Description "Daily cleanup task"
