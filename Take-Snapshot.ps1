#Author: Manish
#Take snapshot backup of server
Set-PowerCLIConfiguration -DefaultVIServerMode Multiple -Scope User -Confirm:$false
Write-Host `n
Connect-VIServer
$VMs=get-content C:\DefaultInstalls\snapshot\servers.txt
Write-Host `n
#$count=0
$CRNumber=Read-Host 'Enter Change Request Number/Snapshot name' :
foreach($VM in $VMs)
{
    Write-Host "Taking snapshot of $VM !" -ForegroundColor Green
    New-Snapshot -VM $VM -Name $CRNumber | Select-Object VM,Created,Name | ft
}

$mychoice=Read-Host 'Do you want to see snapshot list (y/n) :'
if($mychoice -eq 'y')
{ Get-VM (Get-Content C:\DefaultInstalls\snapshot\servers.txt) | Get-Snapshot -Name $CRNumber | Select-Object VM,Created,Name | ft}
else { Write-Host "My work is done. Bye Bye." }


 