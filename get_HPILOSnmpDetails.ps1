$servers=get-content ".\servers.txt"
$a=get-credential
foreach($server in $servers)
{
  $server
  $res = Get-HPiLOSNMPIMSetting -Server $server -Credential $a | Select Hostname,STATUS_MESSAGE,SNMP_ADDRESS_1,SNMP_ADDRESS_1_ROCOMMUNITY,SNMP_ADDRESS_1_TRAPCOMMUNITY,SNMP_SYS_CONTACT
  $server + ":" + $res.STATUS_MESSAGE + ":" + $res.SNMP_ADDRESS_1 + ":" + $res.SNMP_ADDRESS_1_ROCOMMUNITY + ":" + $res.SNMP_ADDRESS_1_TRAPCOMMUNITY + ":" + $res.SNMP_SYS_CONTACT >>  output1.txt
}

