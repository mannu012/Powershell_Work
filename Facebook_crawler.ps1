$array=@(get-content E:\url6.txt)
[System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") > null6
$sw = @'
[DllImport("user32.dll")]
public static extern int ShowWindow(int hwnd, int nCmdShow);
'@
$type = Add-Type -Name ShowWindow2 -MemberDefinition $sw -Language CSharpVersion3 -Namespace Utils -PassThru
$i=0;
#$save=70;
$b=1;
$count=1;
for($i=0;$i -ne 10000000000; ){
$ie1=new-object -com internetexplorer.application;
$ie1.visible=$true
$ie2=new-object -com internetexplorer.application;
$ie2.visible=$true
$ie3=new-object -com internetexplorer.application;
$ie3.visible=$true
$ie4=new-object -com internetexplorer.application;
$ie4.visible=$true
$ie5=new-object -com internetexplorer.application;
$ie5.visible=$true
$ie6=new-object -com internetexplorer.application;
$ie6.visible=$true
$ie7=new-object -com internetexplorer.application;
$ie7.visible=$true
$ie8=new-object -com internetexplorer.application;
$ie8.visible=$true
$ie9=new-object -com internetexplorer.application;
$ie9.visible=$true
$ie10=new-object -com internetexplorer.application;
$ie10.visible=$true
$a1=$array[$i]
$i=$i+1;
$a2=$array[$i]
$i=$i+1;
$a3=$array[$i]
$i=$i+1;
$a4=$array[$i]
$i=$i+1;
$a5=$array[$i]
$i=$i+1;
$a6=$array[$i]
$i=$i+1;
$a7=$array[$i]
$i=$i+1;
$a8=$array[$i]
$i=$i+1;
$a9=$array[$i]
$i=$i+1;
$a10=$array[$i]
$i=$i+1;
$ie1.navigate2("$a1");
$ie2.navigate2("$a2");
$ie3.navigate2("$a3");
$ie4.navigate2("$a4");
$ie5.navigate2("$a5");
$ie6.navigate2("$a6");
$ie7.navigate2("$a7");
$ie8.navigate2("$a8");
$ie9.navigate2("$a9");
$ie10.navigate2("$a10");
$type::ShowWindow($ie1.hwnd, 2) # 2 = minimize
$type::ShowWindow($ie2.hwnd, 2) # 2 = minimize
$type::ShowWindow($ie3.hwnd, 2) # 2 = minimize
$type::ShowWindow($ie4.hwnd, 2) # 2 = minimize
$type::ShowWindow($ie5.hwnd, 2) # 2 = minimize
$type::ShowWindow($ie6.hwnd, 2) # 2 = minimize
$type::ShowWindow($ie7.hwnd, 2) # 2 = minimize
$type::ShowWindow($ie8.hwnd, 2) # 2 = minimize
$type::ShowWindow($ie9.hwnd, 2) # 2 = minimize
$type::ShowWindow($ie10.hwnd, 2) # 2 = minimize
do{
   $value1=$ie1.document.body.innerHTML
   $d1=$value1 | Select-String -Pattern "Messenger"
   $e1=$value1 | Select-String -Pattern "Captcha"
  } while ($d1 -eq $null) {sleep 01}
do{
   $value2=$ie2.document.body.innerHTML
   $d2=$value2 | Select-String -Pattern "Messenger"
   $e2=$value2 | Select-String -Pattern "Captcha"
  } while ($d2 -eq $null) {sleep 01}
do{
   $value3=$ie3.document.body.innerHTML
   $d3=$value3 | Select-String -Pattern "Messenger"
   $e3=$value3 | Select-String -Pattern "Captcha"
  } while ($d3 -eq $null) {sleep 01}
do{
   $value4=$ie4.document.body.innerHTML
   $d4=$value4 | Select-String -Pattern "Messenger"
   $e4=$value4 | Select-String -Pattern "Captcha"
  } while ($d4 -eq $null) {sleep 01}
do{
   $value5=$ie5.document.body.innerHTML
   $d5=$value5 | Select-String -Pattern "Messenger"
   $e5=$value5 | Select-String -Pattern "Captcha"
  } while ($d5 -eq $null) {sleep 01}
do{
   $value6=$ie6.document.body.innerHTML
   $d6=$value6 | Select-String -Pattern "Messenger"
   $e6=$value6 | Select-String -Pattern "Captcha"
  } while ($d6 -eq $null) {sleep 01}
do{
   $value7=$ie7.document.body.innerHTML
   $d7=$value7 | Select-String -Pattern "Messenger"
   $e7=$value7 | Select-String -Pattern "Captcha"
  } while ($d7 -eq $null) {sleep 01}
do{
   $value8=$ie8.document.body.innerHTML
   $d8=$value8 | Select-String -Pattern "Messenger"
   $e8=$value8 | Select-String -Pattern "Captcha"
  } while ($d8 -eq $null) {sleep 01}
do{
   $value9=$ie9.document.body.innerHTML
   $d9=$value9 | Select-String -Pattern "Messenger"
   $e9=$value9 | Select-String -Pattern "Captcha"
  } while ($d9 -eq $null) {sleep 01}
do{
   $value10=$ie10.document.body.innerHTML
   $d10=$value10 | Select-String -Pattern "Messenger"
   $e10=$value10 | Select-String -Pattern "Captcha"
  } while ($d10 -eq $null) {sleep 01}
if($e1 -ne $null)
{
 $a1 >> E:\pending_url6.txt
 $a1 >> E:\fb_url6.txt
}
else
{
 $value1 >> E:\user\A\new6\$b.html
 $b=$b+1;
 $a1 >> E:\fb_url6.txt
}
if($e2 -ne $null)
{
 $a2 >> E:\pending_url6.txt
 $a2 >> E:\fb_url6.txt
}
else
{
 $value2 >> E:\user\A\new6\$b.html
 $b=$b+1;
 $a2 >> E:\fb_url6.txt
}
if($e3 -ne $null)
{
 $a3 >> E:\pending_url6.txt
 $a3 >> E:\fb_url6.txt
}
else
{
 $value3 >> E:\user\A\new6\$b.html
 $b=$b+1;
 $a3 >> E:\fb_url6.txt
}
if($e4 -ne $null)
{
 $a4 >> E:\pending_url6.txt
 $a4 >> E:\fb_url6.txt
}
else
{
 $value4 >> E:\user\A\new6\$b.html
 $b=$b+1;
 $a4 >> E:\fb_url6.txt
}
if($e5 -ne $null)
{
 $a5 >> E:\pending_url6.txt
 $a5 >> E:\fb_url6.txt
}
else
{
 $value5 >> E:\user\A\new6\$b.html
 $b=$b+1;
 $a5 >> E:\fb_url6.txt
}
if($e6 -ne $null)
{
 $a6 >> E:\pending_url6.txt
 $a6 >> E:\fb_url6.txt
}
else
{
 $value6 >> E:\user\A\new6\$b.html
 $b=$b+1;
 $a6 >> E:\fb_url6.txt
}
if($e7 -ne $null)
{
 $a7 >> E:\pending_url6.txt
 $a7 >> E:\fb_url6.txt
}
else
{
 $value7 >> E:\user\A\new6\$b.html
 $b=$b+1;
 $a7 >> E:\fb_url6.txt
}
if($e8 -ne $null)
{
 $a8 >> E:\pending_url6.txt
 $a8 >> E:\fb_url6.txt
}
else
{
 $value8 >> E:\user\A\new6\$b.html
 $b=$b+1;
 $a8 >> E:\fb_url6.txt
}
if($e9 -ne $null)
{
 $a9 >> E:\pending_url6.txt
 $a9 >> E:\fb_url6.txt
}
else
{
 $value9 >> E:\user\A\new6\$b.html
 $b=$b+1;
 $a9 >> E:\fb_url6.txt
}
if($e10 -ne $null)
{
 $a10 >> E:\pending_url6.txt
 $a10 >> E:\fb_url6.txt
}
else
{
 $value10 >> E:\user\A\new6\$b.html
 $b=$b+1;
 $a10 >> E:\fb_url6.txt
}
$ie1.quit();
$ie2.quit();
$ie3.quit();
$ie4.quit();
$ie5.quit();
$ie6.quit();
$ie7.quit();
$ie8.quit();
$ie9.quit();
$ie10.quit();

[System.Windows.Forms.MessageBox]::Show("internet explorer") > null6
$count=$count+10;
}
