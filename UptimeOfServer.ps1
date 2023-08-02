[cmdletbinding()]

$Count = 0
$Count1 = 1
$Count2 = 0
$OutputFile = "C:\Temp\Manish\Ping-Report.xls" 
Remove-Item $OutputFile -ErrorAction SilentlyContinue 
$ComputerName = Get-Content "C:\Temp\Manish\servers.txt"
$ApplicationName = Get-Content "C:\Temp\Manish\Application.txt"
$Tier = Get-Content "C:\Temp\Manish\DR-Tier.txt"
 
	$Report = "
			<html>
				<head>
					<title> Server Uptime Report </title>
				</head>
				<body>
					<H1 Align=`"Center`"> <B>Server Online Report </B></H1>
					<br>
			
                    <H1 Align=`"Center`"> <B><font color=`"red`">Staples INC </B></H1></font>
                    <br>
					<H3 Align=`"Center`"> Report Generated at $(Get-Date) EST</H3>
					<table BORDER=`"1`" CELLPADDING=`"5`" Align=`"Center`">
					<tr>
						<td BGColor=Yellow Align=center><b>S.No</b></td>
						<td BGColor=Yellow Align=center><b>Server Name</b></td>
						<td BGColor=Yellow Align=center><b>Application Name</b></td>
                                                <td BGColor=Yellow Align=center><b>DR Tier</b></td>	
						<td BGColor=Yellow Align=center><b>Online Status</b></td>
						
				</tr>"	

	$SuccessComps
	$UnreachableComps
	$FailedComps
	$FinalOutput = @()	
	
foreach($Computer in $ComputerName) 
{
			
		$Computer = $Computer.Toupper()
		$OutputObj	= New-Object -TypeName PSobject
		$OutputObj | Add-Member -MemberType NoteProperty -Name ComputerName -Value $Computer
		
		
		$Status = 0
		if(Test-Connection -Computer $Computer -count 1  -ea 0)
        {		
			$OutputObj | Add-Member -MemberType NoteProperty -Name IsOnline -Value "True"
			
            $Status=1
            $SuccessComps++
		

		} 
        else 
        {
			$OutputObj | Add-Member -MemberType NoteProperty -Name IsOnline -Value "False"
			
			$UnreachableComps++
            $FailedComps++
		}
		
		
		$FinalOutput +=$OutputObj
		
		
			if($Status) {
				$BGColor="green"
			} else {
				$BGColor="red"
			}
			$Report += "<TR>
						<TD BGColor=$BGColor>$Count1</TD>
						<TD BGColor=$BGColor>$($OutputObj.ComputerName)</TD>
						<TD BGColor=$BGColor>$($ApplicationName[$Count])</TD>
                                                <TD BGColor=$BGColor>$($Tier[$count2])</TD>
						<TD BGColor=$BGColor>$($OutputObj.IsOnline)</TD>
						
						
						</TR>"
$Count++
$Count1++
$count2++

	}
	

		$Report +="</table>
				<br>
				<h3>Report Summary:</h3>
				<table>
				<tr>
					<td>Total No. of Computers scanned</td>
					<td>: $Count</td>
				</tr>
				<tr>
				<td>No. Of computers online</td>
				<td>: $SuccessComps</td>
			 </tr>
			  <tr>
				<td>No. Of computers Offline</td>
				<td>: $UnreachableComps</td>
			 </tr>
			 
			 </table>
			<h5 Align=`"Center`"><font color=`"blue`">This report is brought to you by Manish.
			<br>
             Offshore Wintel Team. 
			</font></h5>
	</body>
	</html>
				"			
		$Report | Out-File $OutputFile -Force
	Send-MailMessage -From "Manish.Chandra@xyz.com" -To "WintelTeam@xyz.com" -Subject "Server Online Report - New format for review" -Body "Please find the Server Online Report Attached" -Attachments "C:\Temp\Manish\Ping-Report.xls" -SmtpServer "relay.xyz.com"
