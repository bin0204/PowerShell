#This case AddressList is "10.2.255.183"

#get DNS information
$allInfo = [System.Net.Dns]::GetHostByName(($env:computerName))
#get AddressList and then convert it to string
$ipAddress = $allInfo.AddressList[0].IPAddressToString

$elements = $ipAddress.Split(".")

#output = 10 2 255 183


#-In operator and define a range with ..
#$a = 200
#$a -In 100..300
#OUTPUT = True

$ip = $elements -join " " #joined with whitespace
#output = 10 2 255 183

$ip.GetType() #display String[]


If ($ip[2] -eq 101) {
	#install printer: GCB101_for_x64.exe
	'Your IP : 172.123.101.*'
}
#172.123.111.*
ElseIf ($ip[2] -eq 111) {
	#install SAP
    #install printer: GCB111_for_x64.exe
	'Your IP : 172.123.111.*'
}
#172.123.140.*
ElseIf ($ip[2] -eq 140) {
	#install printer: GCB140_for_x64.exe
	'Your IP : 172.123.140.*'
}
#Teachers
ElseIf ($ip[3] -ge 100) {
	#do something
	'Your IP : 172.123.*.100'
}
#Students
ElseIf ($ip[3] -ge 101 -and $ip[3] -le 255) {
	#do something
	'Your IP : 172.123.*.101~255'
}
Else {
	'Dude!'
}