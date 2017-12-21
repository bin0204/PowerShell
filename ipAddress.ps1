$allInfo = [System.Net.Dns]::GetHostByName(($env:computerName))
$ipAddress = $allInfo.AddressList[0].IPAddressToString

$ipElement = $ipAddress.Split(".")


$newArray = @()

foreach ($i in $ipAddress){
	$a = $i.Split(".")
	$newArray += $a	
}

if ()