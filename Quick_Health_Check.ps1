<# Author - Manish
Script to enable quick health check without login into server.
Developed specially for peak holiday season in Christmas and Thanksgiving months
#>
$erroractionpreference = "SilentlyContinue"
do {
     Write-Host 'Enter 1 for Memory'
     Write-Host `n
     Write-Host 'Enter 2 for CPU'
     Write-Host `n
     Write-Host 'Enter 3 to check local drive utilization'
     Write-Host `n
     Write-Host 'Enter 4 to exit'
     Write-Host `n
     $choice=Read-Host 'Enter Your Choice' :
     Write-Host `n
     if($choice -eq 4)
     { exit; }
     $server=Read-Host 'Enter Server Name' :
     Write-Host `n
     $s=New-PSSession $server
     switch ($choice)
     {
        1 { cls
            $OS = gwmi -Class win32_operatingsystem -computername $server | Select-Object @{Name = "MemoryUsage"; Expression = {"{0:N2}" -f ((($_.TotalVisibleMemorySize - $_.FreePhysicalMemory)*100)/ $_.TotalVisibleMemorySize) }}
            "Total Memory Usage is " + $OS.MemoryUsage + "%"
            Write-Host `n
            Get-Process -ComputerName $server | Sort-Object WS -Descending | Select -First 20 | Format-Table -AutoSize ;
          }
        2 { cls
            $AVGProc = get-WmiObject -computername $server win32_Processor | Measure-Object -property LoadPercentage -Average | Select Average ;
            "Total CPU Usage is " + $AVGProc.Average + "%"
            Write-Host `n
            Invoke-Command -Session $s -ScriptBlock { get-process | Sort-Object CPU -Descending | Select -First 20 | Format-Table -AutoSize} ;
          }
        3 { cls
            $drive=Read-Host 'Enter Drive letter e.g. C or D or E' :
            Write-Host `n
            $letter=$drive + ":"
            $vol=Get-WmiObject -Class win32_Volume -ComputerName $server -Filter "DriveLetter = '$letter'" | Select-object @{Name = "PercentFree"; Expression = {"{0:N2}" -f (($_.FreeSpace / $_.Capacity)*100) } }       
            "Total Free Space is " + $vol.PercentFree + "%" + " for " + $drive + " drive"
            Write-Host `n
          }
        default { "unable to conenct" }
     }
} while ($choice -ne 4)
