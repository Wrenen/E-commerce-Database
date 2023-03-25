
CREATE TABLE `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `products` mediumtext,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_id_UNIQUE` (`category_id`)
);

CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `category` int DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity_stock` int DEFAULT NULL,
  `price` float DEFAULT NULL,
  `product_image` mediumtext,
  `product_description` longtext,
  `rating` int DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `product_id_UNIQUE` (`product_id`),
  KEY `category` (`category`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category`) REFERENCES `category` (`category_id`)
);

CREATE TABLE `customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shipping_info` int DEFAULT NULL,
  `billing_info` int DEFAULT NULL,
  `phone_number` bigint DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
);

CREATE TABLE `product_review` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `review_comment` mediumtext,
  PRIMARY KEY (`review_id`),
  UNIQUE KEY `review_id_UNIQUE` (`review_id`),
  UNIQUE KEY `product_id_UNIQUE` (`product_id`),
  UNIQUE KEY `customer_id_UNIQUE` (`customer_id`),
  CONSTRAINT `product_review_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
);

CREATE TABLE `department` (
  `department_id` int NOT NULL,
  `department_name` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `employee` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`department_id`),
  UNIQUE KEY `department_id_UNIQUE` (`department_id`),
  UNIQUE KEY `department_name_UNIQUE` (`department_name`),
  UNIQUE KEY `manager_UNIQUE` (`manager`)
);

CREATE TABLE `discount` (
  `discount_id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `discount_type` varchar(1) DEFAULT NULL,
  `discount_amount` float DEFAULT NULL,
  `discount_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`discount_id`),
  UNIQUE KEY `discount_id_UNIQUE` (`discount_id`),
  UNIQUE KEY `product_id_UNIQUE` (`product_id`),
  CONSTRAINT `discount_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
);

CREATE TABLE `distributor` (
  `distributor_id` int NOT NULL,
  `distributor_name` varchar(255) DEFAULT NULL,
  `products` varchar(255) DEFAULT NULL,
  `country_origin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`distributor_id`),
  UNIQUE KEY `distributor_id_UNIQUE` (`distributor_id`)
);

CREATE TABLE `email_list` (
  `email_id` int NOT NULL,
  `email_list` text,
  `customer_id` int NOT NULL,
  PRIMARY KEY (`email_id`),
  UNIQUE KEY `email_id_UNIQUE` (`email_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `email_list_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
);

CREATE TABLE `employee` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `department_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `house_#` int DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `phone_number` mediumtext,
  `email` mediumtext,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `employee_id_UNIQUE` (`employee_id`)
);

CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `total cost` float DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_id_UNIQUE` (`order_id`),
  UNIQUE KEY `customer_id_UNIQUE` (`customer_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
);

CREATE TABLE `order_items` (
  `order_items_id` int NOT NULL,
  `order_id` int DEFAULT NULL,
  `product` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price_per_unit` float DEFAULT NULL,
  PRIMARY KEY (`order_items_id`),
  KEY `order_id_idx` (`order_id`),
  CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
);

CREATE TABLE `payment_information` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(45) DEFAULT NULL,
  `customer_id` int NOT NULL,
  `order_id` int NOT NULL,
  PRIMARY KEY (`payment_id`),
  UNIQUE KEY `payment_id_UNIQUE` (`payment_id`),
  KEY `customer_id` (`customer_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `payment_information_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `payment_information_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
);

CREATE TABLE `shipping_info` (
  `shipping_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `house_#` int DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `shipping_cost` float DEFAULT NULL,
  `shipping_method` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`shipping_id`),
  UNIQUE KEY `shipping_id_UNIQUE` (`shipping_id`),
  UNIQUE KEY `order_id_UNIQUE` (`order_id`),
  CONSTRAINT `shipping_info_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
);

CREATE TABLE `shopping_cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `total_cost` float NOT NULL,
  PRIMARY KEY (`cart_id`)
);

CREATE TABLE `shopping_cart_items` (
  `cart_items_id` int NOT NULL,
  `cart_id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price_per_unit` float DEFAULT NULL,
  PRIMARY KEY (`cart_items_id`),
  KEY `cart_id_idx` (`cart_id`),
  CONSTRAINT `cart_id` FOREIGN KEY (`cart_id`) REFERENCES `shopping_cart` (`cart_id`)
);

CREATE TABLE `tracking_info` (
  `tracking_id` int NOT NULL,
  `shipping_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tracking_id`),
  UNIQUE KEY `shipping_id_UNIQUE` (`shipping_id`),
  UNIQUE KEY `order_id_UNIQUE` (`order_id`),
  UNIQUE KEY `customer_id_UNIQUE` (`customer_id`),
  CONSTRAINT `tracking_info_ibfk_1` FOREIGN KEY (`shipping_id`) REFERENCES `shipping_info` (`shipping_id`)
);

CREATE TABLE `wish_list` (
  `wish_list_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`wish_list_id`),
  KEY `customer_id_idx` (`customer_id`),
  CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
);

CREATE TABLE `wish_list_items` (
  `wish_list_items_id` int NOT NULL AUTO_INCREMENT,
  `wish_list_id` int DEFAULT NULL,
  `products` mediumtext,
  `quantity` int DEFAULT NULL,
  `price_per_unit` float DEFAULT NULL,
  PRIMARY KEY (`wish_list_items_id`),
  UNIQUE KEY `order_id_UNIQUE` (`wish_list_items_id`),
  KEY `wish_list_idx` (`wish_list_id`),
  CONSTRAINT `wish_list` FOREIGN KEY (`wish_list_id`) REFERENCES `wish_list` (`wish_list_id`)
);
