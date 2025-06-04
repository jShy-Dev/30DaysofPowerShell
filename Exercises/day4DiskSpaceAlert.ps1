
$lowDrives = @()

Get-PSDrive -PSProvider 'FileSystem' | ForEach-Object {
    if ($_.Free -lt 5GB) {
        $lowDrives += $_.Name
    }
}

if ($lowDrives.Count -gt 0) {

    Write-Host "Disk Space Warning: Available space on drive(s): $($lowDrives -join ', ') is below 5GB."
}
else {
    Write-Host "All drives have sufficient storage."
}
