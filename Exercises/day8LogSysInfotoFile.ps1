# PowerShell Script: LogSystemInfo.ps1

# Note:
# To run this script, first check your execution policy is Remote Signed.
# For production environments, it's recommended to sign your scripts with a trusted certificate.

# Output file
$logFile = "SystemInfoLog.txt"

# Collect system information
$os = Get-CimInstance Win32_OperatingSystem
$cpu = Get-CimInstance Win32_Processor
$memory = Get-CimInstance Win32_PhysicalMemory
$disk = Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3"

# Write system information to the log file
"System Information Log - $(Get-Date)" | Out-File -FilePath $logFile
"----------------------------------------" | Out-File -FilePath $logFile -Append
"Computer Name: $($env:COMPUTERNAME)" | Out-File -FilePath $logFile -Append
"User Name: $($env:USERNAME)" | Out-File -FilePath $logFile -Append
"OS Version: $($os.Caption) $($os.Version)" | Out-File -FilePath $logFile -Append
"CPU: $($cpu.Name)" | Out-File -FilePath $logFile -Append
"Total Physical Memory: $([math]::round(($os.TotalVisibleMemorySize/1MB), 2)) GB" | Out-File -FilePath $logFile -Append

"Disk Usage:" | Out-File -FilePath $logFile -Append
foreach ($d in $disk) {
    "Drive $($d.DeviceID): $([math]::round(($d.Size/1GB), 2)) GB total, $([math]::round(($d.FreeSpace/1GB), 2)) GB free" | Out-File -FilePath $logFile -Append
}
