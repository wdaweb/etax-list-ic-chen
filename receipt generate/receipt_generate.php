<?php
$dsn="mysql:host=localhost;dbname=receipt_lot;charset=utf8";
$pdo=new PDO($dsn,"root","");

if(!empty($_GET['year']) AND !empty($_GET['month'])) {
    $y=$_GET['year'];
    $m=$_GET['month'];
    $EN=["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"];

    for ($i=1;$i<=100;$i++) { 
        $y=$y; //年
        $m="$m"; //月
        $en=$EN[rand(0,25)].$EN[rand(0,25)]; // 英文編號
        $number=mt_rand(00000000,99999999);
        $num=str_pad($number,8,0,STR_PAD_LEFT); // 數字
        $amt=mt_rand(0,1999); // 金額
        $sql="INSERT INTO `receipt`(`id`, `year`, `month`, `r_en`, `r_num`, `amount`) 
        VALUES (NULL,'$y','$m','$en','$num','$amt')";
        $pdo->exec($sql);
    }
}
?>

<form action="receipt_generate.php?year=<?=$y;?>&month=<?=$m;?>" method="get">
<table>
    <tr>
        <td><input type="text" name="year" id="year">(西元)年</td>
    </tr>
    <tr>
        <td>
            <select name="month" id="month">
                <option value="1,2">1~2月</option>
                <option value="3,4">3~4月</option>
                <option value="5,6">5~6月</option>
                <option value="7,8">7~8月</option>
                <option value="9,10">9~10月</option>
                <option value="11,12">11~12月</option>
        </td>
    </tr>
    <tr>
        <td><input type="submit" value="產生100張發票資料"></td>
    </tr>
</table>
</form>