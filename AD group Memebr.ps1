# Export AD Group members
$groupname = Get-Content c:\temp\ADGroups.txt
$Members = foreach ($GroupMember in $GroupName) {
   Get-ADGroupMember -Identity $GroupMember | Select-Object @{Name="Group";Expression={$GroupMember}},SamAccountName
}
$Members | Export-CSV c:\temp\ADGroups_output.csv