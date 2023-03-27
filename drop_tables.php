
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

    <a href="index.php">Return</a>
</body>
</html>

<?php
    // Connect to MySQL database
    include_once 'includes/connection.php';
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
