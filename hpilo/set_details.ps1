import-module .\HPiLOCmdlets.psm1
$servers=get-content ".\servers.txt"
$a=get-credential
foreach($server in $servers)
{
  $server
  Set-HPiLOSNMPIMSetting -Server 10.69.5.190 -Credential $a -SNMPAddress1 10.4.31.246 -SNMPAddress1ROCommunity pr1vate -SNMPAddress1TrapCommunityVersion Y -SNMPAddress1TrapCommunityValue pr1vate -SNMPSysContact offshoreopensystems@staples.com
}
