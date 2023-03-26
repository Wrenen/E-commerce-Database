<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta product_name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CP363 Database</title>
</head>

<body>
    <?php
        $servername = "127.0.0.1";
        $username = "root";
        $password = "";
        $dbname = "E-commerce";

        //create connection
        $conn = mysqli_connect($servername, $username, $password, $dbname);

        //check connection
        if (!$conn){
            die("Connection failed:" . mysqli_connect_error());
        }
        echo "Connected successfully";
    ?>
    <!--script src ="databaseConnector.js"></script-->
    
    <form method="post">
        <input type="submit" product_name="Products" value="Products"/>
        <input type="button" value="Category" onclick=""/>
        <input type="button" value="Shopping Cart" onclick=""/>
    </from>

    <?php
    // Display the products
    $sql = "SELECT * FROM products";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            echo "<h2>" . $row["product_name"] . "</h2>";
            echo "<p>" . $row["product_description"] . "</p>";
            echo "<p>Price: $" . $row["price"] . "</p>";
            echo "<img src='" . $row["image"] . "' alt='" . $row["product_name"] . "'><br>";
            echo "<button onclick='addToCart(" . $row["product_id"] . ")'>Add to Cart</button>";
        }
    } else {
        echo "0 results";
    }
    ?>
</body>
</html>
