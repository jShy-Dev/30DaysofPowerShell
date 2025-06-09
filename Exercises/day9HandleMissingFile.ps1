
# Set the error action preference to stop on all errors
$ErrorActionPreference = "Stop"

# Define the path to the file we want to read
$filePath = "C:\example\data.txt"

try {
    # Attempt to read the file content
    $content = Get-Content -Path $filePath
    Write-Output "File content successfully read:"
    Write-Output $content
}
catch {
    # Handle the error gracefully if the file is missing or inaccessible
    Write-Warning "An error occurred while trying to read the file: $_"
}
finally {
    # This block will always execute regardless of success or failure
    Write-Output "Script execution completed."
}

# Notes:
# - $ErrorActionPreference = "Stop" ensures that non-terminating errors are treated as terminating errors.
# - The try block attempts to read the file.
# - The catch block handles any exceptions that occur.
# - The finally block runs cleanup or final messages regardless of the outcome.
