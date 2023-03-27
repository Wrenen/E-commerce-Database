<?php
// Connect to database
$servername = "127.0.0.1";
$username = "root";
$password = "";
$dbname = "E-commerce";
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Create function to create a table with user input
function createTable($conn) {
    // Retrieve table name and column names from user input
    $tableName = $_POST['tableName'];
    $column1Name = $_POST['column1Name'];
    $column1Type = $_POST['column1Type'];
    $column2Name = $_POST['column2Name'];
    $column2Type = $_POST['column2Type'];
    $column3Name = $_POST['column3Name'];
    $column3Type = $_POST['column3Type'];
    
    // Create SQL statement to create table
    $sql = "CREATE TABLE $tableName (
        id INT(6) NOT NULL PRIMARY KEY,
        $column1Name $column1Type,
        $column2Name $column2Type,
        $column3Name $column3Type
    )";
    
    // Execute SQL statement and check for errors
    if (mysqli_query($conn, $sql)) {
        echo "Table created successfully";
    } else {
        echo "Error creating table: " . mysqli_error($conn);
    }
}

// Call function if form is submitted
if (isset($_POST['submit'])) {
    createTable($conn);
}

// Close database connection
mysqli_close($conn);
?>

<!-- Create HTML form to input table and column names -->
<form method="post">
    <label for="tableName">Table Name:</label>
    <input type="text" name="tableName"><br><br>
    <label for="column1Name">Column 1 Name:</label>
    <input type="text" name="column1Name">
    <label for="column1Type">Column 1 Type:</label>
    <select name="column1Type">
        <option value="VARCHAR(255)">VARCHAR(255)</option>
        <option value="INT">INT</option>
        <option value="DATE">DATE</option>
    </select><br><br>
    <label for="column2Name">Column 2 Name:</label>
    <input type="text" name="column2Name">
    <label for="column2Type">Column 2 Type:</label>
    <select name="column2Type">
        <option value="VARCHAR(255)">VARCHAR(255)</option>
        <option value="INT">INT</option>
        <option value="DATE">DATE</option>
    </select><br><br>
    <label for="column3Name">Column 3 Name:</label>
    <input type="text" name="column3Name">
    <label for="column3Type">Column 3 Type:</label>
    <select name="column3Type">
        <option value="VARCHAR(255)">VARCHAR(255)</option>
        <option value="INT">INT</option>
        <option value="DATE">DATE</option>
    </select><br><br>
    <input type="submit" name="submit" value="Create Table">
</form>
