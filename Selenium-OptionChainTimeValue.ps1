$log=Get-Date -format 'yyyyMMdd'
$logfile=$log+".txt"
[System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") > null6
$sw = @'
[DllImport("user32.dll")]
public static extern int ShowWindow(int hwnd, int nCmdShow);
'@
$workingpath='D:\selenium'
Import-Module "$($workingpath)\WebDriver.dll"

$ChromeDriver=New-Object OpenQA.Selenium.Chrome.ChromeDriver
$ChromeDriver.Navigate().GoToURL('https://ltp.investingdaddy.com/detailed-options-chain.php')
# $ChromeDriver.Url = "https://ltp.investingdaddy.com/auth-login.php"
# $ChromeDriver.navigate().refresh();

$type = Add-Type -Name ShowWindow2 -MemberDefinition $sw -Language CSharpVersion3 -Namespace Utils -PassThru
[System.Windows.Forms.MessageBox]::Show("internet explorer") > null6
# $ChromeDriver > D:\selenium\ttt1.txt
$t=1

do {
$ChromeDriver.PageSource > ttt1.txt
Start-Sleep -Seconds 2
$r=Get-Content "D:\selenium\ttt1.txt" 

# Market price extraction
$a=$r | select-string '14px;font-weight: 200;margin-bottom:0;color : white">'
$a=$a[0]
$a=$a -split 'white">'
$a=$a[1] -split '<'
$marketp=$a[0]
$date=date
$date | Tee-Object -FilePath D:\selenium\log\$logfile -Append
for($i=11;$i -le 30;$i++)
{
  # Strike price extraction
  $ln=($r | select-string "strike_$i").linenumber
  $ln=$ln[0]
  $e=$r[$ln]
  $f=$e.Trim()
  $strikep=$f[0] + $f[1] + $f[2] + $f[3] + $f[4]

  # CE LTP extraction
  $cn=($r | select-string "celtp_$i-clone")
  $cn=$cn -split '>'
  $cn=$cn -split '<'
  $cltp=$cn[2]

  # PE LTP extraction
  $pn=($r | select-string "peltp_$i-clone")
  $pn=$pn -split '>'
  $pn=$pn -split '<'
  $pltp=$pn[2]

  $Cintrinsic = $marketp - $strikep
  if($Cintrinsic -lt 0)
  {
    $Cintrinsic = 0
  }

  $Pintrinsic = $strikep - $marketp
  if($Pintrinsic -lt 0)
  {
    $Pintrinsic = 0
  }

  $CTvalue = $cltp - $Cintrinsic
  $PTvalue = $pltp - $Pintrinsic

  [Math]::Round($CTvalue,2)  >> D:\selenium\CallTimeValue.txt
  [Math]::Round($PTvalue,2)  >> D:\selenium\PutTimeValue.txt
  $callt=[Math]::Round($CTvalue,2)
  $putt=[Math]::Round($PTvalue,2)
  $space=":"

  "Market Price = $marketp" | Tee-Object -FilePath D:\selenium\log\$logfile -Append
  "$callt $space $CTvalue $space $Cintrinsic $space $cltp $space $strikep $space $pltp $space $Pintrinsic $space $PTvalue $space $putt" | Tee-Object -FilePath D:\selenium\log\$logfile -Append

}
$TotalCallTV=Get-Content D:\selenium\CallTimeValue.txt | measure -Sum
$TotalPutTV=Get-Content D:\selenium\PutTimeValue.txt | measure -Sum
$x=get-content D:\selenium\calltvcomparison.txt
$y=get-content D:\selenium\puttvcomparison.txt
if(($x -eq $TotalCallTV.Sum) -and ($y -eq $TotalPutTV.Sum))
{
$ChromeDriver.navigate().refresh();
}
$TotalCallTV.Sum > D:\selenium\calltvcomparison.txt
$TotalPutTV.Sum > D:\selenium\puttvcomparison.txt
"CE value = " + $TotalCallTV.Sum | Tee-Object -FilePath D:\selenium\log\$logfile -Append
"PE value = " + $TotalPutTV.Sum | Tee-Object -FilePath D:\selenium\log\$logfile -Append


if($TotalCallTV.Sum -gt $TotalPutTV.Sum)
{
  $new=$TotalCallTV.Sum - $TotalPutTV.Sum
  $perc=($new*100)/$TotalPutTV.Sum
  "CE is " + [Math]::Round($perc,2) + "% more than PE" | Tee-Object -FilePath D:\selenium\log\$logfile -Append
}
elseif($TotalPutTV.Sum -gt $TotalCallTV.Sum)
{ 
  $new=$TotalPutTV.Sum - $TotalCallTV.Sum
  $perc=($new*100)/$TotalCallTV.Sum
  "PE is " + [Math]::Round($perc,2) + "% more than CE" | Tee-Object -FilePath D:\selenium\log\$logfile -Append
}
else
{"CE and PE TimeV is equal" | Tee-Object -FilePath D:\selenium\log\$logfile -Append}
"==========================" | Tee-Object -FilePath D:\selenium\log\$logfile -Append
rm D:\selenium\CallTimeValue.txt -Force
rm D:\selenium\PutTimeValue.txt -Force
Start-Sleep -Seconds 58
$t++
} while ($t -lt 600)