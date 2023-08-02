$clusterfilename="C:\Temp\Cluster\MSCluster_report.htm"
$servers="C:\Temp\Cluster\servers.txt"
New-Item -ItemType file $clusterfilename -Force

Function writeHtmlHeader
{
param($fileName)
$date = ( get-date ).ToString('yyyy/MM/dd')
Add-Content $fileName "<html>"
Add-Content $fileName "<head>"
Add-Content $fileName "<meta http-equiv='Content-Type' content='text/html; charset=iso-8859-1'>"
Add-Content $fileName '<title>MS Cluster Report</title>'
add-content $fileName '<STYLE TYPE="text/css">'
add-content $fileName  "<!--"
add-content $fileName  "td {"
add-content $fileName  "font-family: Tahoma;"
add-content $fileName  "font-size: 11px;"
add-content $fileName  "border-top: 1px solid #999999;"
add-content $fileName  "border-right: 1px solid #999999;"
add-content $fileName  "border-bottom: 1px solid #999999;"
add-content $fileName  "border-left: 1px solid #999999;"
add-content $fileName  "padding-top: 0px;"
add-content $fileName  "padding-right: 0px;"
add-content $fileName  "padding-bottom: 0px;"
add-content $fileName  "padding-left: 0px;"
add-content $fileName  "}"
add-content $fileName  "body {"
add-content $fileName  "margin-left: 5px;"
add-content $fileName  "margin-top: 5px;"
add-content $fileName  "margin-right: 0px;"
add-content $fileName  "margin-bottom: 10px;"
add-content $fileName  ""
add-content $fileName  "table {"
add-content $fileName  "border: thin solid #000000;"
add-content $fileName  "}"
add-content $fileName  "-->"
add-content $fileName  "</style>"
Add-Content $fileName "</head>"
Add-Content $fileName "<body>"
add-content $fileName  "<table width='100%'>"
add-content $fileName  "<tr bgcolor='#0ca5ad'>"
add-content $fileName  "<td colspan='7' height='25' align='center'>"
add-content $fileName  "<font face='tahoma' color='#191818' size='4'><strong>MS Cluster Report - $date</strong></font>"
add-content $fileName  "</td>"
add-content $fileName  "</tr>"
add-content $fileName  "</table>"
}

# Function to write the HTML Header to the file
Function writeTableHeader
{
param($fileName)
Add-Content $fileName "<tr bgcolor=#0ca5ad>"
Add-Content $fileName "<td width='10%' align='center'>Resource Name</td>"
Add-Content $fileName "<td width='50%' align='center'>Owner Node</td>"
Add-Content $fileName "<td width='10%' align='center'>State</td>"
Add-Content $fileName "</tr>"
}

Function writeTableHeader2
{
param($fileName)
Add-Content $fileName "<tr bgcolor=#0ca5ad>"
Add-Content $fileName "<td width='10%' align='center'>Available Node</td>"
Add-Content $fileName "<td width='50%' align='center'>ID</td>"
Add-Content $fileName "<td width='10%' align='center'>State</td>"
Add-Content $fileName "</tr>"
}

Function writeHtmlFooter
{
param($fileName)
Add-Content $fileName "</body>"
Add-Content $fileName "</html>"
}

Function clusterdetail
{
param($fileName,$Name,$OwnerNode,$State)
Add-Content $fileName "<tr>"
Add-Content $fileName "<td align='center'>$Name</td>"
Add-Content $fileName "<td align='center'>$OwnerNode</td>"
Add-Content $fileName "<td align='center'>$State</td>"
Add-Content $fileName "</tr>"
Add-Content $fileName "</tr>"
}

Function clusterdetail2
{
param($fileName,$Node,$ID,$Status)
Add-Content $fileName "<tr>"
Add-Content $fileName "<td align='center'>$Node</td>"
Add-Content $fileName "<td align='center'>$ID</td>"
Add-Content $fileName "<td align='center'>$Status</td>"
Add-Content $fileName "</tr>"
Add-Content $fileName "</tr>"
}

writeHtmlHeader $clusterfilename

foreach($server in Get-Content $servers)
{
Add-Content $clusterfilename "<table width='100%'><tbody>"
Add-Content $clusterfilename "<tr bgcolor='#FFC300'>"
Add-Content $clusterfilename "<td width='100%' align='center' colSpan=6><font face='tahoma' color='#191818' size='2'><strong> $server </strong></font></td>"
Add-Content $clusterfilename "</tr>"
$a = $null
$b = $null
$c = $null
$nodes = $null
$a = get-cluster -Name $server | Get-ClusterGroup
$b = Get-Cluster -Name $server
$c = $b.Name
$nodes = Get-ClusterNode -Cluster $c

writeTableHeader2 $clusterfilename

if($nodes -eq $null)
{
   $msg="unable to connect"
   clusterdetail2 $clusterfilename "<font color='FF0000'>$msg</font>" "<font color='FF0000'>$msg</font>" "<font color='FF0000'>$msg</font>"
}
else
{
   $array2=@($nodes)
   $cnt2=($nodes.Name).count

   for($j=0;$j -lt $cnt2;$j++)
   {
     Write-Host $array2.Name[$j] $array2.ID[$j] $array2.State[$j] | Format-Table -Wrap -Autosize
     clusterdetail2 $clusterfilename $array2.Name[$j] $array2.ID[$j] $array2.State[$j]
   }
}

writeTableHeader $clusterfilename

if($a -eq $null)
{
   $msg="unable to connect"
   clusterdetail $clusterfilename "<font color='FF0000'>$msg</font>" "<font color='FF0000'>$msg</font>" "<font color='FF0000'>$msg</font>"
}
else
{
   $array=@($a)
   $cnt=($a.Name).count
 
   for($i=0;$i -lt $cnt;$i++)
   {
     Write-Host $array.Name[$i] $array.OwnerNode[$i] $array.State[$i] | Format-Table -Wrap -Autosize
     clusterdetail $clusterfilename $array.Name[$i] $array.OwnerNode[$i] $array.State[$i]
   }
}
}

writeHtmlFooter $clusterfilename

$date = ( get-date ).ToString('yyyy/MM/dd')
