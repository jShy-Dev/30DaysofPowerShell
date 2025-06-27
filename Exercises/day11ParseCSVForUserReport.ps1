#Import the CSV Convert and the user data to JSON
$users = Import-Csv -Path "users.csv"
$json = $users | ConvertTo-Json -Depth 2

#Convert JSON string to XML (for demonstration)
$xml = [xml]("<root>$((ConvertTo-Json -Depth 2 $users) -replace '}', '</user>' -replace '{', '<user>' -replace '"(\w+)":', '<$1>' -replace ',"', '</$1>')</root>")

#Use Select-Xml to find nodes(users). Selecting all below as example, but you can use queries in the Select-XML XPath via [name=''] etc for other properties 
$report = $xml | Select-Xml -XPath "//user"

#Display the report
$report | ForEach-Object {
    $_.Node.InnerXml
}
