#Define the parameter for the RG and prompt for admin credentials, then loop through the VM names using $vm variable and create a VM for each within the RG.

param (
    [string]$ResourceGroupName
)

$adminCredential = Get-Credential -Message 'Enter a username and password for the VM administrator.'

$vms = 'web','app','sql'

foreach ($vm in $vms) {

Write-Output "Creating VM: $vm"

$azVmParams = @{
        ResourceGroupName = $ResourceGroupName
        Name              = $vm
        Credential        = $adminCredential
        Image             = 'Canonical:0001-com-ubuntu-server-jammy:22_04-lts:latest'
        OpenPorts         = 22
    }
    New-AzVm @azVmParams
}