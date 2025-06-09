# Requires the RSAT AD module and you must be connected to a domain with permissions to the tenant. There is already a Get-ADUser cmdlet and I actually just cheat by calling it. The goal of this exercise was to define a function that gets user details so sometimes its smart development to be 'lazy'.

function Get-RealADUser {
    param([string]$Username)

    Get-ADUser -Identity $Username -Properties EmailAddress, Department | Select-Object Name, EmailAddress, Department
}
