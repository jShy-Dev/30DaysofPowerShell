# (Optional) Start an interactive session with the remote computer
Enter-PSSession -ComputerName $remotePC

# Run this block *within* the remote session
$services = Get-Service

# Display as table in the PowerShell window
$services | Format-Table -AutoSize

# Get the remote computer name dynamically
$hostname = $env:COMPUTERNAME

# Ask user if they want to export the list
$response = Read-Host "Do you want to export this service list to a CSV in your Downloads folder? (Y/N)"

if ($response -match '^[Yy]') {
    # Leave remote session to save CSV locally
    Exit-PSSession

    # Define path using hostname and user's Downloads folder
    $downloads = [Environment]::GetFolderPath("Downloads")
    $csvPath = Join-Path $downloads "Services_$hostname.csv"

    # Re-run command remotely and save output locally
    $services = Invoke-Command -ComputerName $remotePC -ScriptBlock { Get-Service }
    $services | Select-Object Name, Status, DisplayName | Export-Csv -Path $csvPath -NoTypeInformation

    Write-Host "Service list saved to $csvPath"
} else {
    # Clean exit from session
    Exit-PSSession
    Write-Host "No export performed. Session closed."
}

# Inside the session you could run commands like:
# Get-Service
# Exit-PSSession
