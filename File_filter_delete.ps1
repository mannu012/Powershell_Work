<#
   This script deletes files older than 7 days in folders listed in hashtable below.
   Author: Manish
#>

# Hash table containing folders list
$folders_table=@{folder1='E:\Test\New1';
                 folder2='E:\Test\New2';
                 folder3='E:\Test\New3';
                 folder4='E:\Test\New4';
                 folder5='E:\Test\New5';
                 folder6='E:\Test\New6';
                 folder7='E:\Test\New7';}

# Variable declaration for creating log files
$LogTime = Get-Date -Format "MM-dd-yyyy_hh-mm-ss"
$LogFile = 'E:\Logs\'+"Logs_"+$LogTime+".log"

# Creating array of keys for hash table enumeration
$folders = $folders_table.Keys | ForEach-Object { $_ } 

# Execution block
foreach ($folder in $folders) 
{     
   Get-ChildItem –Path $folders_table[$folder] -File -Recurse `
   | Where-Object {($_.LastWriteTime -lt (Get-Date).AddDays(-7))}`
    | Remove-Item -Force -Verbose 4>> $LogFile
} 
