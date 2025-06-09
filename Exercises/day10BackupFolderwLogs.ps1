<#
.SYNOPSIS
    Backup a specified folder to a backup location with logging.

.DESCRIPTION
    This script verifies the source folder, checks or creates the destination folder,
    copies the contents, and optionally removes old backups. It logs all actions.

.NOTES
    Author: jShy-Dev
    Date: 2025
#>

# Set error action preference to stop on all errors
$ErrorActionPreference = "Stop"

# Define source and destination paths
$sourcePath = "C:\Path\To\Source"
$backupPath = "D:\Backups\SourceBackup"
$logFile = "D:\Backups\backup_log.txt"

# Start logging
Add-Content -Path $logFile -Value "`n[$(Get-Date)] Starting backup process..."

try {
    # Verify source folder exists
    $source = Get-Item -Path $sourcePath -ErrorAction Stop
    Add-Content -Path $logFile -Value "Source folder found: $sourcePath"

    # Check if destination exists, create if not
    if (-not (Test-Path -Path $backupPath)) {
        New-Item -Path $backupPath -ItemType Directory -Force
        Add-Content -Path $logFile -Value "Created backup directory: $backupPath"
    }

    # Perform the backup
    Copy-Item -Path "$sourcePath\*" -Destination $backupPath -Recurse -Force
    Add-Content -Path $logFile -Value "Backup completed successfully from $sourcePath to $backupPath"

    # Optional: Remove old backups (example: delete files older than 30 days)
    # Get-ChildItem -Path $backupPath -Recurse | Where-Object { $_.LastWriteTime -lt (Get-Date).AddDays(-30) } | Remove-Item -Force
    # Add-Content -Path $logFile -Value "Old backups removed."

} catch {
    # Log the error
    Add-Content -Path $logFile -Value "ERROR: $($_.Exception.Message)"
} finally {
    # Final log entry
    Add-Content -Path $logFile -Value "[$(Get-Date)] Backup process completed.`n"
}
