# Edit list of computer names and count of ping attempts for your use case. Script will loop through each computer and ping based on count and prints the result to the console.
$computers = @("Computer1", "Computer2", "Computer3")

foreach ($computer in $computers) {
    if (Test-Connection -ComputerName $computer -Count 1 -Quiet) {
        Write-Host "$computer is online"
    } else {
        Write-Host "$computer is offline"
    }
}
