#This module needs to exist inside a folder that matches the path in the script below so that you can create the module manifest properly
#New-ModuleManifest -Path ".\SystemAudit.psd1" -RootModule "SystemAudit.psm1"
#The above script needs to be run in the parent folder AFTER this current script already exists
#You will then run an import module command in a separate session or script to use it

function Get-SystemAuditReport {
    param (
        [string[]]$ComputerName,
        [string]$ReportPath = "C:\Users\Shyj1\SystemAuditReport.csv"
    )

    $results = foreach ($comp in $ComputerName) {
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

    $results | Export-Csv -Path $ReportPath -NoTypeInformation
}
