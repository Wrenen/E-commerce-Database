<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        <input type="submit" name="Products" value="Products"/>
        <input type="button" value="Category" onclick=""/>
        <input type="button" value="Shopping Cart" onclick=""/>
    </from>

    <p> 
        <p>Products_______________________Categories</p>
        <?php
            $sql = "SELECT product_id FROM products;";   
            $result = mysqli_query($conn, $sql);
            $resultCheck = mysqli_num_rows($result);

            // drop down list of products

            $sql = "SELECT product_id, product_name FROM products";
            $result = $conn->query($sql);

            // Create dropdown list
            if ($result->num_rows > 0) {
            echo "<select product_name='product'>";
            while($row = $result->fetch_assoc()) {
                echo "<option value='" . $row["product_id"] . "'>" . $row["product_name"] . "</option>";
            }
            echo "</select>";
            } else {
            echo "0 results";
            }
        
            $sql = "SELECT category_id FROM category;";   
            $result = mysqli_query($conn, $sql);
            $resultCheck = mysqli_num_rows($result);

            // drop down list of products

            $sql = "SELECT category_id, category_name FROM category";
            $result = $conn->query($sql);

            // Create dropdown list
            if ($result->num_rows > 0) {
            echo "<select category name='category'>";
            while($row = $result->fetch_assoc()) {
                echo "<option value='" . $row["category_id"] . "'>" . $row["category_name"] . "</option>";
            }
            echo "</select>";
            } else {
            echo "0 results";
            }
        

        /*
        // Query the database 
        $sql = "SELECT category.product_id AS category_id, category.product_name AS category_name, products.category_id AS product_id, products.category_name AS product_name FROM category LEFT JOIN products ON category.product_id = products.category_id";
        $result = $conn->query($sql);

        // Create nested dropdown list
        if ($result->num_rows > 0) {
        echo "<select name='category' onchange='getProducts(this.value)'>";
        echo "<option value=''>Select a category</option>";
        while($row = $result->fetch_assoc()) {
            $category_id = $row["category_id"];
            $category_name = $row["category_name"];
            $product_id = $row["product_id"];
            $product_name = $row["product_name"];
            if (!isset($category[$category_id])) {
            $category[$category] = $category_id;
            echo "<option value='" . $category . "'>" . $category_name . "</option>";
            }
            if ($product_id) {
            $products[$category_id][$product_id] = $p;
            }
        }
        echo "</select>";
        echo "<select name='products' id='products'>";
        echo "<option value=''>Select a product</option>";
        echo "</select>";
        } else {
        echo "0 results";
        }

        // Close the connection
        $conn->close();
        */
        // Database connection
        /*
        // User registration
        if(isset($_POST['register'])){
            $name = $_POST['name'];
            $email = $_POST['email'];
            $password = $_POST['password'];
            $sql = "INSERT INTO customer (name, email, password) VALUES ('$name', '$email', '$password')";
            mysqli_query($conn, $sql);
        }

        // User login
        if(isset($_POST['login'])){
            $email = $_POST['email'];
            $password = $_POST['password'];
            $sql = "SELECT * FROM customer WHERE email='$email' AND password='$password'";
            $result = mysqli_query($conn, $sql);
            if(mysqli_num_rows($result) == 1){
                // Set user session or cookie
            }
        }

        // Product display
        $sql = "SELECT * FROM products";
        $result = mysqli_query($conn, $sql);
        while($row = mysqli_fetch_assoc($result)){
            $product_id = $row['id'];
            $product_name = $row['name'];
            $product_description = $row['description'];
            $price = $row['price'];
            $product_image = $row['image'];
            // Display product data
        }

        // Shopping cart
        if(isset($_POST['add_to_cart'])){
            $product_id = $_POST['product_id'];
            $quantity_stock = $_POST['quantity'];
            // Add product to cart session or cookie
        }
        if(isset($_POST['update_cart'])){
            $shopping_cart = $_POST['cart'];
            // Update cart session or cookie
        }
        if(isset($_POST['place_order'])){
            $customer_id = $_POST['user_id'];
            $total_cost = $_POST['total_amount'];
            $date = date('Y-m-d H:i:s');
            $sql = "INSERT INTO orders (user_id, total_cost, date) VALUES ('$product_id', '$total_cost', '$
            }
            </p>
            */
        $conn->close();
