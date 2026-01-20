<?php
    session_start();
    include("../settings/connect_datebase.php");
    
    $login = $_POST['login'];
    $password = $_POST['password'];
    
    // ищем пользователя
    $query_user = $mysqli->query("SELECT * FROM `users` WHERE `login`='".$login."' AND `password`= '".$password."';");
    
    $id = -1;
    while($user_read = $query_user->fetch_row()) {
        $id = $user_read[0];
    }
    
    if($id != -1) {
        $_SESSION['user'] = $id;
    
        # Пользователь авторизовался
        # 1) Создать сессию
        $Ip = $_SERVER['REMOTE_ADDR'];
        $DateStart = date("Y-m-d H:i:s");
    
        $Sql = "INSERT INTO `session` (`IdUser`, `Ip`, `DateStart`, `DateNow`) VALUES ($id, '$Ip', '$DateStart', '$DateStart')";
        $mysqli->query($Sql);
    
        $Sql = "SELECT `Id` FROM `session` WHERE `DateStart` = '$DateStart'";
        $Query = $mysqli->query($Sql);
        $Read = $Query->fetch_assoc();
        $_SESSION["IdSession"] = $Read["Id"];
    
        // Найти строки с записью в логи (примерно строка 28-30) и заменить на:
        # 2) Записать событие авторизации
        $Sql = "INSERT INTO `logs` (`Ip`, `IdUser`, `Date`, `TimeOnline`, `Status`, `Event`) 
                VALUES ('$Ip', $id, '$DateStart', '00:00:00', 'SUCCESS', 'Пользователь $login авторизовался.')";
        $mysqli->query($Sql);
    }
    echo $id; // убрал md5 - возвращаем просто id
?>