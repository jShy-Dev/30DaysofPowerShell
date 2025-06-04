#Replace the server placeholders with your actual server names. You will obviously need the appropriate network settings and permissions. I have only run this on batches of 20 servers at a time - run any code with caution.
#Replace the service name with the actual service you want to check.
$servers = @('Server1', 'Server2', 'Server3')
$serviceName = 'Service'

foreach ($server in $servers) {
    if (Get-Service -ComputerName $server -Name $serviceName -ErrorAction SilentlyContinue) {
        Write-Host "$serviceName exists on $server"
    }
    else {
        Write-Host "$serviceName NOT found on $server"
    }
}
