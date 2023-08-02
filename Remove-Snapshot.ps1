#Author: Manish
$ErrorActionPreference="SilentlyContinue"
Set-PowerCLIConfiguration -DefaultVIServerMode Multiple -Scope User -Confirm:$false
Write-Host `n
Connect-VIServer
$VMs=get-content C:\DefaultInstalls\snapshot\servers.txt
Write-Host `n
$CRNumber=Read-Host 'Enter Change Request Number/Snapshot name' :
foreach($VM in $VMs)
{
    Write-Host "Deleting snapshot $CRNumber of $VM !" -ForegroundColor Green
    Get-VM $VM | Get-Snapshot -Name $CRNumber | Remove-Snapshot -Confirm:$false
}