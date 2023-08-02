$servers= get-content .\servers.txt
foreach($server in $servers)
{
  $server
  $a = Get-WmiObject -class Win32_Product -computername $server | Where-Object {$_.Name -match "VMWare Tools"} |select Name,version
  $server + $a.Name + $a.version >> output.txt
}
