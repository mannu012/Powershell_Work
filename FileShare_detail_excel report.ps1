$machines="C:\Temp\servers.txt"
$erroractionpreference="SilentlyContinue"
$a =  New-Object -ComObject Excel.Application
$a.visible = $True

$b=$a.Workbooks.Add()
$c=$b.Worksheets.Item(1)

$c.Cells.Item(1,1) = "Server Name"
$c.Cells.Item(1,1) = "Shared Name"
$c.Cells.Item(1,1) = "Size (GB)"
$c.Cells.Item(1,1) = "Last Modified Date"

$d = $c.UsedRange
$d.Interior.ColorIndex = 19
$d.Font.ColorIndex = 11
$d.Font.Bold = $True
$d.EntireColumn.AutoFit()

$intRow =2

$c.Cells.Item($intRow, 1) = $server

foreach($servers in $machines)
{
  $sharenames = gwmi -class win32_share -ComputerName $servers -filter "Type =0" | Select Name

  foreach($sharename in $sharenames)
  {
    $pathis= "\\" + $servers + "\" + $sharename.Name
    $c.Cells.Item($intRow, 2) = $pathis
    $sizecheck = Get-ChildItem -Path $pathis -Recurse -ErrorAction SilentlyContinue | Measure-Object -Sum Length
    $c.Cells.Item($intRow, 3) = "{0:N2}" -f ($sizecheck.sum / 1GB)
    $datecheck = Get-Item $pathis | ForEach {$_.LastWriteTime}
    $c.Cells.Item($intRow, 4) = $datecheck
    $intRow = $intRow + 1
  }
}
$d.EntireColumn.autoFit()
$Excel.Workbooks.Close()
$Excel.Quit()
