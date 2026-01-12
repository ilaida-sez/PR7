<?php
require_once("../../settings/connect_datebase.php");

$Sql = "SELECT * FROM `logs` ORDER BY `Date` DESC";
$Query = $mysqli->query($Sql);

$Events = array();

if ($Query && $Query->num_rows > 0) {
    while($Read = $Query->fetch_assoc()) {
        $Status = "offline";
        $SqlSession = "SELECT * FROM `session` WHERE `IdUser` = " . intval($Read["IdUser"]) . " ORDER BY `DateStart` DESC";
        $QuerySession = $mysqli->query($SqlSession);
        
        if($QuerySession && $QuerySession->num_rows > 0) {
            $ReadSession = $QuerySession->fetch_assoc();
            $TimeEnd = strtotime($ReadSession["DateNow"]) + 5*60;
            $TimeNow = time();
            
            if($TimeEnd > $TimeNow) {
                $Status = "online";
            } else {
                $TimeEnd = strtotime($ReadSession["DateNow"]);
                $TimeDelta = round(($TimeNow - $TimeEnd)/60);
                $Status = "Был в сети: {$TimeDelta} минут назад";
            }
        }

        $Event = array(
            "Ip" => $Read["Ip"],
            "Date" => $Read["Date"],
            "TimeOnline" => $Read["TimeOnline"],
            "Status" => $Read["Status"],
            "Event" => $Read["Event"]
        );
        array_push($Events, $Event);
    }
}
?>