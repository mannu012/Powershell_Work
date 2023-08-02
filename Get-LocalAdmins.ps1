#Retrieves local administrators list
$Result = @()
foreach($server in (gc C:\temp\servers.txt)){
$computer = [ADSI]("WinNT://" + $server + ",computer")
if($computer.Path -eq $null)
{
$Result += Write-Output "ServerName: $server"
$Result += Write-Output ' '
$Result += Write-Output 'unable to connect '
$Result += Write-Output '----------------------------------'
$Result += Write-Output ' '
}
else
{
$Group = $computer.psbase.children.find("Administrators")
function getAdmins
{$members = ($Group.psbase.invoke("Members") | %{$_.GetType().InvokeMember("Adspath", 'GetProperty', $null, $_, $null)}) -replace ('WinNT://DOMAIN/' + $server + '/'), '' -replace ('WinNT://DOMAIN/', 'DOMAIN\') -replace ('WinNT://', '')
$members }
$Result += Write-Output "ServerName: $server"
$Result += Write-Output ' '
$Result += ( getAdmins )
$Result += Write-Output '----------------------------------'
$Result += Write-Output ' '
}
}
$Result >> C:\Temp\Administrators.txt