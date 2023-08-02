Function get-diskinformation{
 [cmdletbinding()]
 Param(
 [Parameter(mandatory=$true,
            ValueFromPipeline=$true,
            ValueFromPipelineByPropertyName=$True,
            position=0)]
 [string]$ComputerName,
 [int]$diskType = 3   
 )
BEGIN {}
PROCESS {
foreach ($computer in $computername) {
 Write-Verbose "Finding local disk information on $computer"
 $a=Get-WmiObject –Class Win32_LogicalDisk –Filter "DriveType=$diskType" –ComputerName $computer
 $a | Select-Object –Property DeviceID,@{Name='ComputerName'; Expression={$_.__SERVER}}, 
 @{Name="Size(GB)";Expression={[math]::Round($_.Size/1GB,2)}}, 
 @{Name="FreeSpace(GB)";Expression={[math]::Round($_.FreeSpace/1GB,2)}}
  }
 }
 END {}
}
