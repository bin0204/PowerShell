$allInfo = [System.Net.Dns]::GetHostByName(($env:computerName))
$ipAddress = $allInfo.AddressList[0].IPAddressToString

$ipElement = $ipAddress.Split(".")


$newArray = @()

foreach ($i in $ipAddress){
	$a = $i.Split(".")
	$newArray += $a	
}

if ($newArray[2] -eq 255) {
	'The third element of ipAddress is 255'
}