$servers=get-content C:\Temp\servers.txt
foreach($server in $servers)
{
  $test=Test-Connection -computername $server -Count 2 -Quiet -ErrorAction SilentlyContinue
 $server + ":" + $test >> output.txt
}