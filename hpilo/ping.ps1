$servers=get-content ".\servers2.txt"
$a=get-credential
foreach($server in $servers)
{
  $server
  $res=Test-Connection -Server $server -Quiet -Count 1
  $server + ":" + $res >>  Ping.txt
}

