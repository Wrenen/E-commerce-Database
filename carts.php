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
<?php
    // Retrieve the shopping_cart variable from the session
    if (isset($_SESSION["shopping_cart"]))
        $shopping_cart = json_decode($_SESSION["shopping_cart"], true);

    // Display the shopping_cart contents
    foreach ($shopping_cart as $products) {
        // Retrieve the s$products information from the database
        $sql = "SELECT * FROM products WHERE product_id = " . $products["product_id"];
        $result = $conn->query($sql);
        $row = $result->fetch_assoc();
        
        // Display the s$products information and quantity_stock
        echo "<h2>" . $row["product_name"] . "</h2>";
        echo "<p>Price: $" . $row["price"] . "</p>";
        echo "<p>Quantity: " . $products["quantity_stock"] . "</p>";
    }
?>