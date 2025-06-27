#Paths
$moduleName = "SystemAudit"
$moduleFolder = "$PSScriptRoot\$moduleName"
$psm1Path = "$moduleFolder\$moduleName.psm1"
$psd1Path = "$moduleFolder\$moduleName.psd1"

#Create the folder if it doesnt exist
if (-not (Test-Path $moduleFolder)) { New-Item -Path $moduleFolder -ItemType Directory }

#Create and import the module. Using -Force will ensure the module refreshes properly
New-ModuleManifest -Path ".\SystemAudit.psd1" -RootModule "SystemAudit.psm1"
Import-Module $moduleFolder -Force

#Use the function
$computers = Get-Content "C:\machines.txt"
Get-SystemAuditReport -ComputerName $computers