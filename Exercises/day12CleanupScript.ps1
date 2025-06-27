#Define the log folder path - this is a folder I made on my machine for this example - replace with your own.
$LogFolder = "C:\Users\Shyj1\Logs"

#Ensure the folder exists
if (Test-Path $LogFolder) {
    # Get all files (not folders) and delete them
    Get-ChildItem -Path $LogFolder -File | Remove-Item -Force
    Write-Output "Log folder cleaned: $LogFolder"
} else {
    Write-Output "Log folder does not exist: $LogFolder"
}
