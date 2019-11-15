<link rel=stylesheet type="text/css" href="./css/main.css">
<style>
    body {
        text-align: center;
        padding: 3%;
    }
</style>
<?php
include_once "db_info.php";

if(!empty($_POST['year']) && !empty($_POST['month']) || !empty($_POST['en']) || !empty($_POST['num']) || !empty($_POST['amount'])) {
    $year=$_POST['year'];
    $month=$_POST['month'];
    $month="$month";
    $en=$_POST['en'];
    $num=$_POST['num'];
    $amount=$_POST['amount'];

    if(strlen($num)==8) {
        $sql="INSERT INTO `receipt`(`id`, `year`, `month`, `r_en`, `r_num`, `amount`) 
        VALUES (NULL, '$year','$month','$en','$num','$amount')";
        $pdo->exec($sql);

        echo "輸入成功！";
    } else {
        echo "發票號碼不是8位數，請重新輸入。";
    }
} else {
    echo "欄位空白。";
}
?>