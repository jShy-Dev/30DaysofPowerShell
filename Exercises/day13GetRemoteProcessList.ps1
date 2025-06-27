#Define the remote computer hostname - you will need to change the hostname and possibly include fqdn based on your target
$remotePC = "RemoteComputerName"

# Invoke a remote script to pass the list of processes on the machine
Invoke-Command -ComputerName $remotePC -ScriptBlock { Get-Process }

# Display as table in the PowerShell window
$services | Format-Table -AutoSize
