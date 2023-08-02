$servers=get-content ".\servers2.txt"
$b=get-credential
foreach($server in $servers)
{
  $server
  $res=(Get-HPiLOFirmwareInfo -Server $server -Credential $b).STATUS_MESSAGE
  $server + ":" + $res >>  admin.txt
}

