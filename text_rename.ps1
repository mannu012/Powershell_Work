$i=100;
Get-ChildItem -Path "E:\AAMdata\groupnew\test\temp" -Filter *.txt |
ForEach-Object {
      $extension = $_.Extension
      $newName = "$i.txt"
      $i++
      Rename-Item -Path $_.FullName -NewName $newName
}