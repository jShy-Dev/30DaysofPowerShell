# Login to Azure then define variables - make sure to replace this for your scenario
Connect-AzAccount
$adminCredential = Get-Credential -Message 'Enter a username and password for the VM administrator.'
$resourceGroupName = "NewResourceGroup"
$location = "eastus"
$templateFile = "C:\Path\To\template.json"

# Create a new resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Validate the ARM template
Test-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile $templateFile

# Deploy the ARM template
New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile $templateFile
