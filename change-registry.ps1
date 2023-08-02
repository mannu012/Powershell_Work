$servers=Get-Content "C:\Temp\servers.txt"
Foreach($server in $servers)
{
  $server
  Write-Host "==================="
  reg add "\\$server\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverride /t REG_DWORD /d 72 /f
}