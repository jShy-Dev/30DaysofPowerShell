#Define variables andmake sure to replace any of my placeholders 
#IMPORTANT - make sure that the machines.txt file includes only one machine/hostname per line
$computers = Get-Content "C:\Users\Shyj1\machines.txt"
$reportPath = "C:\Users\Shyj1\SystemAuditReport.csv"
$smtpServer = "smtp.YOUR DOMAIN.com"
$from = "YOUR EMAIL SENDER"
$to = "YOUR EMAIL TARGET"
$subject = "System Audit Report"
$cred = Get-Credential  #Prompt for email credentials

#Collect system info from the machine
$results = foreach ($comp in $computers) {
    try {
        $sys = Get-CimInstance -ComputerName $comp -ClassName Win32_OperatingSystem
        [PSCustomObject]@{
            ComputerName = $comp
            OS           = $sys.Caption
            LastBoot     = $sys.LastBootUpTime
            UptimeDays   = ((Get-Date) - $sys.LastBootUpTime).Days
        }
    } catch {
        [PSCustomObject]@{
            ComputerName = $comp
            OS           = "Unavailable"
            LastBoot     = "N/A"
            UptimeDays   = "N/A"
        }
    }
}

# Export comleted list to CSV
$results | Export-Csv -Path $reportPath -NoTypeInformation

# Send email with CSV attached
Send-MailMessage -From $from -To $to -Subject $subject -Body "Audit report attached." -SmtpServer $smtpServer -Credential $cred -UseSsl -Attachments $reportPath
