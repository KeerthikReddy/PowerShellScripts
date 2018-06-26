$IEInstance = New-Object -com internetexplorer.application
$IEInstance.visible = $true;
$IEInstance.navigate("https://ess.excelityglobal.com/index.jsp")
while($IEInstance.busy) {sleep 1}

$InstanceDocument = $IEInstance.Document




$PIN = $InstanceDocument.IHTMLDocument3_getElementsByTagName('input') | Where-Object {$_.name -eq 'p1'}
$PIN.value = '0094848192'
$password = $InstanceDocument.IHTMLDocument3_getElementsByTagName('input') | Where-Object {$_.name -eq 'p2'}
$password.value = 'test'

sleep 3

$SignIn = $InstanceDocument.IHTMLDocument3_getElementsByTagName('input') | Where-Object {$_.name -eq 'logon'}
$SignIn.click()