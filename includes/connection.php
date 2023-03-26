<?php
        $servername = "localhost";
        $username = "root";
        $password = "cp363group10";
        $dbname = "e-commerce database";

        //create connection
        $conn = mysqli_connect($servername, $username, $password, $dbname);

        //check connection
        if (!$conn){
            die("Connection failed:" . mysqli_connect_error());
        }
        echo "<script>console.log('Database Connected successfully' );</script>";
?>
