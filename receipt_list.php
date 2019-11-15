<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel=stylesheet type="text/css" href="./css/main.css">
</head>
<style>
    table tr:nth-child(3) {
        font-size: 3.5vw;
    }

    table tr:not(:nth-child(4)) {
        height: 10vw;
    }

    table tr:nth-child(2) td {
        width: 16.6%;
    }

    #list {
        padding: 0 0 0 8%;
    }

    input[type="submit" i] {
        font-size: 2.5vw;
        width: 80%;
        height: 60%;
        padding: 1px 1px;
    }

    input {
        width: 35%;
    }
</style>
<body>
<?php
if(!empty($_POST['year'])) {
    $year=$_POST['year'];
} else {
    $year=date("Y");
}
if(isset($_POST['submit'])) {
    $month=$_POST['submit'];
} else {
    $month="0月";
}
?>
<form action="receipt_list.php" method="post">
    <table>
        <tr>
            <td colspan="3"><input type="number" name="year" id="year">(西)年</td>
            <td colspan="3"><?=$year."年&emsp;".$month;?></td>
        </tr>
        <tr>
            <td><input type="submit" name="submit" value="1~2月"></td>
            <td><input type="submit" name="submit" value="3~4月"></td>
            <td><input type="submit" name="submit" value="5~6月"></td>
            <td><input type="submit" name="submit" value="7~8月"></td>
            <td><input type="submit" name="submit" value="9~10月"></td>
            <td><input type="submit" name="submit" value="11~12月"></td>
        </tr>
        <tr>
            <td colspan="4">發票號碼</td>
            <td colspan="2">金額</td>
        </tr>
        <tr>
            <td colspan="6">
            <div id="list">
<?php
include_once "db_info.php";

function showCount($year,$mon) {
    global $pdo;
    $sqlCount="SELECT COUNT(*), SUM(`amount`) FROM `receipt` WHERE `year`='$year' && `month`='$mon'";
    $count=$pdo->query($sqlCount)->fetch();
    return $count;
}

if(isset($_POST['submit'])) {
    $month=["1~2月", "3~4月", "5~6月", "7~8月", "9~10月", "11~12月"];
    if($_POST['submit']==$month[0]) {
        showList($year,"1,2");
        $counted=showCount($year,"1,2");
    }
    if($_POST['submit']==$month[1]) {
        showList($year,"3,4");
        $counted=showCount($year,"3,4");
    }
    if($_POST['submit']==$month[2]) {
        showList($year,"5,6");
        $counted=showCount($year,"5,6");
    }
    if($_POST['submit']==$month[3]) {
        showList($year,"7,8");
        $counted=showCount($year,"7,8");
    }
    if($_POST['submit']==$month[4]) {
        showList($year,"9,10");
        $counted=showCount($year,"9,10");
    }
    if($_POST['submit']==$month[5]) {
        showList($year,"11,12");
        $counted=showCount($year,"11,12");
    }
} else {
    $counted=["0", "0"];
}
function showList($year,$mon) {
    global $pdo;
    $sql="SELECT * FROM `receipt` WHERE `year`='$year' && `month`='$mon'";
    $data=$pdo->query($sql)->fetchAll();
    foreach($data as $value) {
        $num=$value[3].$value[4];
        $amt=$value[5]."<br>";
?>
        <?=$num."&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;".$amt;?>
        <?php
    }
}
?>
            </div>
            </td>
        </tr>
        <tr>
            <td colspan="4">總共<?=$counted[0];?>張發票</td>
            <td colspan="2">總計<?=$counted[1];?>元</td>

        </tr>
    </table>
</form>
</body>
</html>