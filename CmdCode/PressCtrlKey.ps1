$cnt = 0;
$WSH = New-Object -Comobject wscript.shell

while($TRUE){
    sleep 10
    $WSH.sendkeys("+")
    $cnt++
}