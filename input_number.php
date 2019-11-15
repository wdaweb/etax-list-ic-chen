<link rel=stylesheet type="text/css" href="./css/main.css">
<style>
    body {
        text-align: center;
        padding: 3%;
    }
</style>
<?php
include_once "db_info.php";

if(!empty($_POST['year']) && !empty($_POST['month'])) {
    $year=$_POST['year'];
    $month=$_POST['month'];
    $month="$month";
    $special=$_POST['special'];
    $grand=$_POST['grand'];
    $first1=$_POST['first1'];
    $first2=$_POST['first2'];
    $first3=$_POST['first3'];
    $extra1=$_POST['extra1'];
    $extra2=$_POST['extra2'];
    $extra3=$_POST['extra3'];

    $sqlFind="SELECT * FROM `lottery` WHERE `year`='$year' && `month`='$month'";
    $chk=$pdo->query($sqlFind)->fetch(PDO::FETCH_BOUND);

    if($chk==1) {
        echo "輸入失敗，因為已經有這一期的獎號。";

    } elseif(!empty($_POST['special']) && !empty($_POST['grand']) && !empty($_POST['first1']) && !empty($_POST['first2']) && !empty($_POST['first3']) && !empty($_POST['extra1']) && !empty($_POST['extra2']) && strlen($special)==8 && strlen($grand)==8 && strlen($first1)==8 && strlen($first2)==8 && strlen($first3)==8) {
            $sql="INSERT INTO `lottery`(`year`, `month`, `special`, `grand`, `first1`, `first2`, `first3`, `extra1`, `extra2`, `extra3`) 
            VALUES ('$year','$month','$special','$grand','$first1','$first2','$first3','$extra1','$extra2','$extra3')";
    
            $pdo->exec($sql);
            echo "輸入成功！";
        } else {
            echo "有些欄位是空白。<br><br>或者特別獎、特獎或頭獎不是8位數。";
        } 
    } else {
    echo "欄位是空白。";
}
?>