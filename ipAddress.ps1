#get DNS information
$allInfo = [System.Net.Dns]::GetHostByName(($env:computerName))
#get AddressList and then convert it to string
$ipAddress = $allInfo.AddressList[0].IPAddressToString

#$ipElement = $ipAddress.Split(".")

#make new array
$newArray = @()

#split ipaddress by dot then append into newArray
foreach ($i in $ipAddress){
	$a = $i.Split(".")
	$newArray += $a
}

#when second element is equal to 255, then print out sentence
if ($newArray[2] -eq 255) {
	'The third element of ipAddress is 255'
}
