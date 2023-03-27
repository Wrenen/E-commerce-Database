
<?php

if($_SERVER["REQUEST_METHOD"] == "POST") {
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
    // Retrieve the column names using DESCRIBE
    $sql = "DESCRIBE $tablename";
    $result = mysqli_query($conn, $sql);

    // Generate an HTML form to input values for each column
    echo "<form method='post' action='" . htmlspecialchars($_SERVER["PHP_SELF"]) . "'>";
    while ($row = mysqli_fetch_assoc($result)) {
        echo $row['Field'] . ": <input type='text' name='" . $row['Field'] . "'><br>";
    }
    echo "<input type='hidden' name='tablename' value='" . $tablename . "'><br>";
    echo "<input type='submit' value='Submit'>";
    echo "</form>";

    // If values have been submitted, insert them into the table using a prepared statement
    if(isset($_POST) && !empty($_POST)){
        $sql = "INSERT INTO $tablename (";
        $values = " VALUES (";
        foreach($_POST as $key => $value){
            if($key != "tablename"){
                $sql .= $key . ",";
                $values .= "'" . $value . "',";
            }
        }
        $sql = rtrim($sql, ",");
        $values = rtrim($values, ",");
        $sql .= ")" . $values . ")";

        if (mysqli_query($conn, $sql)) {
            echo "New record created successfully";
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }
    }

    mysqli_close($conn);
}
?>

<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
    Enter table name: <input type="text" name="tablename"><br>
    <input type="submit" value="Submit">
</form>
