$servers=Get-Content "C:\Temp\servers.txt"
$hklm="LocalMachine"
$keyname='SOFTWARE\\Wow6432Node\\TrendMicro\\PC-cillinNTCorp\\CurrentVersion'
foreach($server in $servers)
{
  $output = "" | Select-Object -Property Value

  $reg = [Microsoft.Win32.RegistryKey]::OpenRemoteBaseKey($hklm, $server)
  $key = $reg.OpenSubkey($keyname)
  $value = $key.GetValue('server')
  $output.Value = $value
  "$server" + ":" + "$value"
}
