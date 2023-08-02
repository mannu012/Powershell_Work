#Add users in local Administrators groups
$servers=get-content C:\Temp\servers.txt
foreach($server in $servers)
{
$server
$DomainName = "staplesams.com"
$UserName = "AdminRedRa001"
$AdminGroup = [ADSI]"WinNT://$server/Administrators,group"
$User = [ADSI]"WinNT://$DomainName/$UserName,user"
$AdminGroup.Add($User.Path)
echo "===================="
}