<# Author - Manish
This script is to create beautiful server healthcheck dashboard and report
#>
$servers=get-content D:\Production_Scripts\Health_Check\servers.txt
$number=$servers.count
$applications=get-content D:\Production_Scripts\Health_Check\application.txt
$ErrorActionPreference= 'silentlycontinue'
$count=0
$Result = @()
ForEach($server in $servers)
{
  Write-host "Checking $server ..."
  
  $AVGProc = Invoke-Command -computername $server -scriptblock {  Get-CimInstance win32_Processor | Measure-Object -property LoadPercentage -Average | Select Average }
  $OS =  Get-CimInstance -Class win32_operatingsystem -computername $server | Select-Object @{Name = "MemoryUsage"; Expression = {"{0:N2}" -f ((($_.TotalVisibleMemorySize - $_.FreePhysicalMemory)*100)/ $_.TotalVisibleMemorySize) }},LastBootupTime,LocalDateTime 
  $vol = Get-CimInstance -Class win32_Volume  -ComputerName $server -Filter "DriveLetter = 'C:'" | Select-object @{Name = "C PercentFree"; Expression = {"{0:N2}" -f (($_.FreeSpace / $_.Capacity)*100) } } ;
  #$localtime=([wmi]'').ConvertToDateTime($OS.LocalDateTime).tostring("MM/dd/yyyy HH:mm:ss") ;
  #$Lastboottime=([wmi]'').ConvertToDateTime($OS.LastBootupTime).tostring("MM/dd/yyyy HH:mm:ss") ;
  $uptimecal=New-TimeSpan -Start $OS.LastBootupTime -End $OS.Localdatetime ;
  $uptime=[String]$uptimecal.Days + " Days " + $uptimecal.Hours + " Hours " + $uptimecal.Minutes + " Minutes " + $uptimecal.Seconds + " Seconds" ;
  # $lasthotfix=(Get-HotFix -ComputerName $server | Sort-Object -Property InstalledOn)[-1] ;
  $lasthotfix=Invoke-Command -computername $server -scriptblock { (Get-HotFix | Sort-Object -Property InstalledOn)[-1]  ;}

  #  $lastpatchdate=([wmi]'').ConvertToDateTime($lasthotfix.InstalledOn).tostring("MM/dd/yyyy") ;
  $ping=Test-Connection $server -Quiet -Count 1
  $application=$applications[$count]
  $cacount=0
  $cwcount=0
  $macount=0
  $mwcount=0
  $sacount=0
  $swcount=0
  $pacount=0

  $result += [PSCustomObject] @{
        ServerName = "$server"
        App = "$application"
        CPULoad = "$($AVGProc.Average)"
        MemLoad = "$($OS.MemoryUsage)"
        CDrive = "$($vol.'C PercentFree')"
        Uptime = "$uptime"
        LastPatchInstalled = "$($lasthotfix.InstalledOn)"
        PingCheck = "$ping"
    }

$date=date
$Outputreport1 = "<HTML><TITLE> Dashboard </TITLE>
<BODY background-color:peachpuff>
                     <font color =""#0BA822"" face=""Microsoft Tai le"" font-size= ""15px"";>
                     <H1 align=center> Windows Server Daily Health Check Report </H1></font>
                     <font color =""#1e0bb3"">
                     <p align=center><B> Report generated on $date </B></p></font>"

$Outputreport2 = "<HTML><TITLE> Dashboard </TITLE>
<BODY background-color:peachpuff>
                     <font color =""#E8241B"" face=""Microsoft Tai le"" font-size= ""15px"";>
                     <H1> Critical Windows Server Health Dashboard </H1></font>
                     <Table border=1 cellpadding=3 cellspacing=0>
                     <TR bgcolor=EC9898  align=center>
                       <TD><B>Total Servers</B></TD>
                       <TD><B>CPU Alert(90-100)%</B></TD>
                       <TD><B>CPU Warning(80-90)%</B></TD>
                       <TD><B>Memory Alert(90-100)%</B></TD>
                       <TD><B>Memory Warning(80-90)%</B></TD>
                       <TD><B>C drive space alert(>=10%)</B></TD>
                       <TD><B>C drive space warning(10-15)%</B></TD>
                       <TD><B>Ping alert</B></TD></TR>"

$Outputreport3 = "<HTML><TITLE> Server Health Report </TITLE>
<BODY background-color:peachpuff>
                     <font color =""#E8241B"" face=""Microsoft Tai le"" font-size= ""11px"";>
                     <H2> Server Health Report </H2></font>
                     <Table border=1 cellpadding=1 cellspacing=0>
                     <TR bgcolor=EC9898 align=center>
                       <TD width=120><B>Server Name</B></TD>
                       <TD><B>Application</B></TD>
                       <TD width=100><B>CPU (%)</B></TD>
                       <TD width=100><B>Memory (%)</B></TD>
                       <TD width=100><B>C Drive Free Space (%)</B></TD>
                       <TD width=240><B>Uptime</B></TD>
                       <TD width=100><B>Last Patch Installed</B></TD>
                       <TD width=100><B>Ping Status</B></TD></TR>"

   Foreach($Entry in $Result)
   {
      if([decimal]$Entry.MemLoad -ge "90")
      {
         $memory="<TD align=center bgcolor=red>$($Entry.MemLoad)</TD>"
         $macount = $macount + 1
      }
      elseif(([decimal]$Entry.MemLoad -lt "90") -and ([decimal]$Entry.MemLoad -ge "80"))
      {
        
        $memory="<TD align=center bgcolor=#FAA33B>$($Entry.MemLoad)</TD>"
        $mwcount = $mwcount + 1
      }
      else 
      { 
        $memory="<TD align=center>$($Entry.MemLoad)</TD>"
      } 

      if([decimal]$Entry.CPULoad -ge 90)
      {
        $cpu="<TD align=center bgcolor=red>$($Entry.CPULoad)</TD>"
        $cacount = $cacount + 1
      }
      elseif(([decimal]$Entry.CPULoad -lt 90) -and ([decimal]$Entry.CPULoad -ge 80))
      {
        $cpu="<TD align=center bgcolor=#FAA33B>$($Entry.CPULoad)</TD>"
        $cwcount = $cwcount + 1
      }
      else
      { 
        $cpu="<TD align=center>$($Entry.CPULoad)</TD>"
      }

      if([decimal]$Entry.Cdrive -le "10")
      {
        $space="<TD align=center bgcolor=red>$($Entry.Cdrive)</TD>"
        $sacount = $sacount + 1
      }
      elseif(([decimal]$Entry.Cdrive -ge "10") -and ([decimal]$Entry.Cdrive -le "15"))
      {
        $space="<TD align=center bgcolor=#FAA33B>$($Entry.Cdrive)</TD>"
        $swcount = $swcount + 1
      }
      else 
      { 
        $space="<TD align=center>$($Entry.Cdrive)</TD>"
      }

      if($Entry.PingCheck -eq $false)
      {
       $pacount = $pacount + 1
       $Entry.CPULoad="NA"
       $Entry.MemLoad="NA"
       $Entry.Cdrive="NA"
       $Entry.Uptime="NA"
       $Entry.LastPatchInstalled="NA"
       $Outputreport3 += "<TR><TD align=center>$($Entry.Servername)</TD><TD align=center>$($Entry.App)</TD><TD align=center bgcolor=red>$($Entry.CPULoad)</TD><TD align=center bgcolor=red>$($Entry.MemLoad)</TD><TD align=center bgcolor=red>$($Entry.Cdrive)</TD><TD align=center bgcolor=red>$($Entry.Uptime)</TD><TD align=center bgcolor=red>$($Entry.LastPatchInstalled)</TD><TD align=center bgcolor=red>$($Entry.PingCheck)</TD></TR>"
      }
      else
      {
      # if(([decimal]$Entry.CPULoad -ge 80) -or ([decimal]$Entry.MemLoad -ge 80) -or ([decimal]$Entry.Cdrive -le 15))
       #{

         $Outputreport3 += "<TR><TD align=center>$($Entry.Servername)</TD><TD align=center>$($Entry.App)</TD>$cpu$memory$space<TD align=center>$($Entry.Uptime)</TD><TD align=center>$($Entry.LastPatchInstalled)</TD><TD align=center>$($Entry.PingCheck)</TD></TR>"
       #}
        
      }
    }
    $Outputreport3 += "</Table></BODY></HTML>"
$count++
}

$Outputreport2 += "<TR><TD align=center>$number</TD><TD align=center>$cacount</TD><TD align=center>$cwcount</TD><TD align=center>$macount</TD><TD align=center>$mwcount</TD><TD align=center>$sacount</TD><TD align=center>$swcount</TD><TD align=center>$pacount</TD></TR>"
$Outputreport2 += "</Table></BODY></HTML>"

$outputreport4=$Outputreport1 + $Outputreport2 + $Outputreport3
# $Outputreport3 += "</Table></BODY></HTML>"

$Outputreport4 | out-file D:\Production_Scripts\Health_Check\output1.htm
Invoke-Expression D:\Production_Scripts\Health_Check\output1.htm

$body = Get-Content D:\Production_Scripts\Health_Check\output1.htm -Raw
$date=( get-date ).ToString('yyyy/MM/dd')
Send-MailMessage -Body $body -BodyAsHtml -From "Manish.Chandra@xyz.com" -To "WintelTeam@xyz.com","SiteOps@xyz.com" -Subject "Daily Health Check Report - $date" -SmtpServer "apprel.xyz.com"
