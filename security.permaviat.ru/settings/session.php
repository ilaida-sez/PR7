<?php
if(isset($_SESSION["IdSession"])) {
    $IdSession = $_SESSION["IdSession"];
    
    $DateNow = date("Y-m-d H:i:s");
    // Используем правильное имя таблицы с маленькой буквы
    $Sql = "UPDATE `session` SET `DateNow` = '$DateNow' WHERE `Id` = '$IdSession'";
    $mysqli->query($Sql);
}
?>