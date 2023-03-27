<?php
    // Connect to MySQL database
    include_once 'includes/connection.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Query</title>
</head>
<body>
    <h2>Queries</h2>

    <form action="" method="POST">
        Table name: <input type="text" name="table_name" value =""><br>
        Select Columns (separated by ,)(use '*' for all): <input type="text" name="column" value =""><br>
        <input type="submit" name = "submit">
    </form>
    <?php
        if (isset($_POST['submit'])){
            echo "Showing " .$_POST['column'];
            echo " from " .$_POST['table_name'] .":<br><br>";
            
            //Query Tables
            $query = "SELECT " .$_POST['column'] ." FROM " .$_POST['table_name'] .";";
            $result = mysqli_query($conn, $query);

            echo "<table><tr>";

            //GET column names
            $columnNames = mysqli_query( $conn, "SHOW COLUMNS FROM " .$_POST['table_name'].";" );
            $columns = array();
            while( $column = mysqli_fetch_array($columnNames) ){
                $columns  []= $column['Field'];
                echo "<td>" .$column[ 'Field' ] . "</td>";
            }
            echo "</tr>";

            //Display each row
            while ($row = mysqli_fetch_assoc($result)){
                echo "<tr>";
                foreach($columns as $columnName){
                    echo "<td>" .$row[$columnName]. "</td>";
                }
                echo "</tr>";
            }
            echo "</table>";
            }

            mysqli_close($conn);
    ?>

    <a href="index.php">Return</a>
</body>
</html>
