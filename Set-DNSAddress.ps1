$servers=Get-Content C:\Manish_script\servers.txt
$ErrorActionPreference = "SilentlyContinue"
foreach($server in $servers)
{
  Write-Progress -Status "Working on $server" -Activity "Setting DNS Server Address"
  $check=Get-WmiObject -ComputerName $server Win32_networkadapterconfiguration | Where-Object {$_.DNSServerSearchOrder -ne $null}
  $b=$check.count
  if ($b -gt 1)
  {
    "$server" + ":" + "Multiple Ethernet configuration found or connection issue" 
  }
  else
  {
    $ind=$check.Index
    $SetDNS = (gwmi -ComputerName $server win32_networkadapterconfiguration -Filter "index=$ind").SetDNSServerSearchOrder(@("164.94.0.1","164.94.0.2"."164.94.0.3"}}
    $confirm = $SetDNS.ReturnValue
    if ($confirm -eq 0)
    {
      "$server" + ":" + "Success"
    }
    else { "$server" + ":" + "Failed" }
  }
}