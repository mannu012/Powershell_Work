$servers=get-content ".\servers.txt"
$a=get-credential
foreach($server in $servers)
{
  $server
  $res=(Get-HPiLOFirmwareInfo -Server $server -Credential $a).STATUS_MESSAGE
  $server + ":" + $res >>  A.txt
}

