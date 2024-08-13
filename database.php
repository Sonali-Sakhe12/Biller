<?php 
// error_reporting(0);
    $server = "localhost";
    $user = "root";
    $pass = "";
    $dbname = "userprofile";

    $conn = mysqli_connect($server, $user, $pass, $dbname);

    if(!$conn)
    {
        echo "Not connected" . mysqli_connect_error();
    }
?>