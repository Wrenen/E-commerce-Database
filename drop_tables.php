
<!DOCTYPE html>
<html>
<head>
	<title>Drop Table</title>
</head>
<body>
    <form method="post" action="">
            <label for="tablename">Table Name:</label>
            <input type="text" name="tablename" id ="tablename"><br>
            <input type="submit" value="Delete Table">
        </form> 
</body>
</html>

<?php
    // Connect to MySQL database
    $servername = "127.0.0.1";
    $username = "root";
    $password = "";
    $dbname = "E-commerce";
    $conn = mysqli_connect($servername, $username, $password, $dbname);
    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    $tablename = $_POST['tablename'];
    
    $sql = "DROP TABLE $tablename";

    if (mysqli_query($conn, $sql)) {
        echo "Table $tablename deleted successfully";
    } else {
        echo "Error deleting table:";
    }

    mysqli_close($conn);
    ?>
 
