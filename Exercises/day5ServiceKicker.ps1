#This could have easily been included in the ServiceChecker script, but It technically serves a different function - feel free to combine, but run any script with caution.
#This script will check for the status of a service on the current machine and start it if it is stopped.
$service = Get-Service -Name 'Service'
if ($service.Status -eq 'Stopped') {
    Start-Service -Name 'Service'
}
