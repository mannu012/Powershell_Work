$servers=get-content "C:\Temp\servers.txt"
foreach($server in $servers)
{
 (gwmi win32_service -ComputerName $server -Filter "Name = 'NetBackup Client Service'").StartService()
}