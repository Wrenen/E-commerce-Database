/*Category Table*/
INSERT INTO category (`category_id`,`category_name`,`products`) VALUES (10000,'Industrial & Scientific','11000, 12000, 13000, 14000, 15000');
INSERT INTO category (`category_id`,`category_name`,`products`) VALUES (11000,'Electronics','21000, 22000, 23000, 24000, 25000');
INSERT INTO category (`category_id`,`category_name`,`products`) VALUES (11100,'Health','31000, 32000, 33000, 34000, 35000');
INSERT INTO category (`category_id`,`category_name`,`products`) VALUES (11110,'Kitchen','41000, 42000, 43000, 44000, 45000');

/*Customer Table*/
INSERT INTO customer (`customer_id`,`name`,`email`,`password`,`shipping_info`,`billing_info`,`phone_number`) VALUES (1,'Emily Nguyen','emily_nguyen@gmail.com','testPass123',1,1,647747385);
INSERT INTO customer (`customer_id`,`name`,`email`,`password`,`shipping_info`,`billing_info`,`phone_number`) VALUES (2,'Benjamin Patel','benjamin_patel@yahoo.com','password',2,2,6477583756);
INSERT INTO customer (`customer_id`,`name`,`email`,`password`,`shipping_info`,`billing_info`,`phone_number`) VALUES (3,'Ava Rodriguez','ava.rodriguez@example.com','12345678',3,3,6479032461);
INSERT INTO customer (`customer_id`,`name`,`email`,`password`,`shipping_info`,`billing_info`,`phone_number`) VALUES (4,'Isaac Kim','isaac.kim@example.com','abcdefg',4,4,6478829056);
INSERT INTO customer (`customer_id`,`name`,`email`,`password`,`shipping_info`,`billing_info`,`phone_number`) VALUES (5,'Olivia Cooper','olivia.cooper@example.com','123456789',5,5,6477204912);
INSERT INTO customer (`customer_id`,`name`,`email`,`password`,`shipping_info`,`billing_info`,`phone_number`) VALUES (6,'William Thomas','william.thomas@example.com','qwertyui',6,6,6474590378);
INSERT INTO customer (`customer_id`,`name`,`email`,`password`,`shipping_info`,`billing_info`,`phone_number`) VALUES (7,'Charlotte Garcia','charlotte.garcia@example.com','letmein',7,7,6474590378);
INSERT INTO customer (`customer_id`,`name`,`email`,`password`,`shipping_info`,`billing_info`,`phone_number`) VALUES (8,'Samuel Lee','samuel.lee@example.com','iloveyou',8,8,6476349031);
INSERT INTO customer (`customer_id`,`name`,`email`,`password`,`shipping_info`,`billing_info`,`phone_number`) VALUES (9,'Sophia Hernandez','sophia.hernandez@example.com','111111',9,9,6477981562);
INSERT INTO customer (`customer_id`,`name`,`email`,`password`,`shipping_info`,`billing_info`,`phone_number`) VALUES (10,'Jackson Davis','jackson.davis@example.com','football',10,10,6472698743);

/*Product*/
INSERT INTO product (`product_id`,`category`,`product_name`,`quantity_stock`,`price`,`product_image`,`product_description`,`rating`) VALUES (11000,10000,'3D Printer',60,400.99,NULL,'A 3D printer used to create 3D models.',1);
INSERT INTO product (`product_id`,`category`,`product_name`,`quantity_stock`,`price`,`product_image`,`product_description`,`rating`) VALUES (12000,10000,'Measuring Tape',60,20.99,NULL,'A tape measure is used for measuring distances.',3);
INSERT INTO product (`product_id`,`category`,`product_name`,`quantity_stock`,`price`,`product_image`,`product_description`,`rating`) VALUES (13000,10000,'Resin Filament',60,22.99,NULL,'Resin Filament used with a 3D Printer',4);
INSERT INTO product (`product_id`,`category`,`product_name`,`quantity_stock`,`price`,`product_image`,`product_description`,`rating`) VALUES (14000,10000,'A3 Battery',60,10.99,NULL,'Tripple A battery used in small appliances',5);
INSERT INTO product (`product_id`,`category`,`product_name`,`quantity_stock`,`price`,`product_image`,`product_description`,`rating`) VALUES (15000,10000,'Volt Meter',60,33.99,NULL,'Used to measure voltage',3);
INSERT INTO product (`product_id`,`category`,`product_name`,`quantity_stock`,`price`,`product_image`,`product_description`,`rating`) VALUES (21000,11000,'Xbox',60,400.99,NULL,'Microsoft Xbox ',2);
INSERT INTO product (`product_id`,`category`,`product_name`,`quantity_stock`,`price`,`product_image`,`product_description`,`rating`) VALUES (22000,11000,'80 Watt Power Supply ',60,90.99,NULL,'80 Watt Power Supply ',5);
INSERT INTO product (`product_id`,`category`,`product_name`,`quantity_stock`,`price`,`product_image`,`product_description`,`rating`) VALUES (23000,11000,'Alexa ',60,100.99,NULL,'Amazon Smart Home Speaker',1);
INSERT INTO product (`product_id`,`category`,`product_name`,`quantity_stock`,`price`,`product_image`,`product_description`,`rating`) VALUES (24000,11000,'Google Home ',60,125.99,NULL,'Google Home Smart Speaker',2);
INSERT INTO product (`product_id`,`category`,`product_name`,`quantity_stock`,`price`,`product_image`,`product_description`,`rating`) VALUES (25000,11000,'Ipad ',60,900.99,NULL,'Apple tablet ',4);
INSERT INTO product (`product_id`,`category`,`product_name`,`quantity_stock`,`price`,`product_image`,`product_description`,`rating`) VALUES (31000,11100,'Toiler Paper',60,18.99,NULL,'Soft Toilet Paper ',3);
INSERT INTO product (`product_id`,`category`,`product_name`,`quantity_stock`,`price`,`product_image`,`product_description`,`rating`) VALUES (32000,11100,'Whey Protein',60,45.99,NULL,'Pre - workout protein',2);
INSERT INTO product (`product_id`,`category`,`product_name`,`quantity_stock`,`price`,`product_image`,`product_description`,`rating`) VALUES (33000,11100,'Keto Gummies',60,30.99,NULL,'Used in wieght loss ',5);
INSERT INTO product (`product_id`,`category`,`product_name`,`quantity_stock`,`price`,`product_image`,`product_description`,`rating`) VALUES (34000,11100,'Toothbrush',60,12.99,NULL,'Soft Bristles with new architecture designed to reach tough spots',3);
INSERT INTO product (`product_id`,`category`,`product_name`,`quantity_stock`,`price`,`product_image`,`product_description`,`rating`) VALUES (35000,11100,'Toothpaste',60,5.99,NULL,'Anti placque and extra whitening toothpaste.',2);
INSERT INTO product (`product_id`,`category`,`product_name`,`quantity_stock`,`price`,`product_image`,`product_description`,`rating`) VALUES (41000,11110,'Pot Set',60,60.99,NULL,'Set of quality copper 3  pots and 3  pans ',3);
INSERT INTO product (`product_id`,`category`,`product_name`,`quantity_stock`,`price`,`product_image`,`product_description`,`rating`) VALUES (42000,11110,'Knife Set',60,40.99,NULL,'Set of quality ceramic knives of varying sizes. F',4);
INSERT INTO product (`product_id`,`category`,`product_name`,`quantity_stock`,`price`,`product_image`,`product_description`,`rating`) VALUES (43000,11110,'Topaware',60,10.99,NULL,'Set of plastic containers to hold your food',5);
INSERT INTO product (`product_id`,`category`,`product_name`,`quantity_stock`,`price`,`product_image`,`product_description`,`rating`) VALUES (44000,11110,'Chopping Board',60,10.99,NULL,'Plastic chopping board used for your cutting needs ',3);
INSERT INTO product (`product_id`,`category`,`product_name`,`quantity_stock`,`price`,`product_image`,`product_description`,`rating`) VALUES (45000,11110,'Air Fryer',60,200.99,NULL,'Electric air fryer ',2);

/*Shopping cart*/
INSERT INTO shopping_cart (`cart_id`,`total_cost`) VALUES (1,801.98);
INSERT INTO shopping_cart (`cart_id`,`total_cost`) VALUES (2,91.98);

/*Shopping cart items*/
INSERT INTO shopping_cart_items (`cart_items_id`,`cart_id`,`product_id`,`quantity`,`price_per_unit`) VALUES (1,1,21000,2,400.99);
INSERT INTO shopping_cart_items (`cart_items_id`,`cart_id`,`product_id`,`quantity`,`price_per_unit`) VALUES (2,2,32000,3,45.99);

/*Department*/
INSERT INTO department (`department_id`,`department_name`,`manager`,`employee`) VALUES (1,'IT','Basar Ozdemir','4');
INSERT INTO department (`department_id`,`department_name`,`manager`,`employee`) VALUES (2,'customer service','Natalie Davis','3');
INSERT INTO department (`department_id`,`department_name`,`manager`,`employee`) VALUES (3,'marketing','Jacob Smith','1');

/*Discount*/
INSERT INTO discount (`discount_id`,`product_id`,`discount_type`,`discount_amount`,`discount_code`) VALUES (12341,12000,'0',0.2,'ABC20');
INSERT INTO discount (`discount_id`,`product_id`,`discount_type`,`discount_amount`,`discount_code`) VALUES (12342,34000,'1',0.3,'ABC30');
INSERT INTO discount (`discount_id`,`product_id`,`discount_type`,`discount_amount`,`discount_code`) VALUES (12343,33000,'1',0.25,'ABC25');

/*Distributor*/
INSERT INTO distributor (`distributor_id`,`distributor_name`,`products`,`country_origin`) VALUES (10000,'Delly','Pot Set, Knife Set','Nigeria ');
INSERT INTO distributor (`distributor_id`,`distributor_name`,`products`,`country_origin`) VALUES (10001,'Lonobo','A3 Battery, Measuring Tape','Turkey');
INSERT INTO distributor (`distributor_id`,`distributor_name`,`products`,`country_origin`) VALUES (10101,'Sicket','Volt Meter, Power Supply','India');
INSERT INTO distributor (`distributor_id`,`distributor_name`,`products`,`country_origin`) VALUES (10110,'Baggery','Alexa, Whey Protein, Kito Gummies','Pakistan');
INSERT INTO distributor (`distributor_id`,`distributor_name`,`products`,`country_origin`) VALUES (10111,'Cluckerster','Ipad, Xbox, Air Fryer','Afganistan');

/*Email list*/
INSERT INTO email_list (`email_id`,`email_list`,`customer_id`) VALUES (1,'enju8000@mylaurier.ca',1);
INSERT INTO email_list (`email_id`,`email_list`,`customer_id`) VALUES (2,'zafa3570@mylaurier.ca',2);
INSERT INTO email_list (`email_id`,`email_list`,`customer_id`) VALUES (3,'ozde0720@mylaurier.ca',3);
INSERT INTO email_list (`email_id`,`email_list`,`customer_id`) VALUES (4,'dcun0590@mylaurier.ca',4);

/*Employee*/
INSERT INTO employee (`employee_id`,`department_id`,`name`,`house_#`,`street`,`city`,`province`,`phone_number`,`email`) VALUES (1,1,'Muhammad Zafar',123,'Fortnite Ave','Waterloo','ON','6478349863','zafa3750@mylaurier.ca');
INSERT INTO employee (`employee_id`,`department_id`,`name`,`house_#`,`street`,`city`,`province`,`phone_number`,`email`) VALUES (2,1,'Basar Ozdemir',25,'LootLake St','Waterloo','ON','6748547543','ozde0720@mylaurier.ca');
INSERT INTO employee (`employee_id`,`department_id`,`name`,`house_#`,`street`,`city`,`province`,`phone_number`,`email`) VALUES (3,1,'Abesson Enjugu',26,'University Ave','Waterloo','ON','6473930456','enju8000@mylaurier.ca');
INSERT INTO employee (`employee_id`,`department_id`,`name`,`house_#`,`street`,`city`,`province`,`phone_number`,`email`) VALUES (4,1,'Wrenen D\'Cunha',68,'Brampton Dr','Waterloo','ON','6473452564','dcun0590@mylaurier.ca');
INSERT INTO employee (`employee_id`,`department_id`,`name`,`house_#`,`street`,`city`,`province`,`phone_number`,`email`) VALUES (5,2,'Natalie Davis',47,'Gom St','Toronto','ON','6478294934','ndavis@database.com');
INSERT INTO employee (`employee_id`,`department_id`,`name`,`house_#`,`street`,`city`,`province`,`phone_number`,`email`) VALUES (6,2,'Guy Jocky',76,'High St','Mississauga','ON','6573848384','guy@gmail.com');
INSERT INTO employee (`employee_id`,`department_id`,`name`,`house_#`,`street`,`city`,`province`,`phone_number`,`email`) VALUES (7,2,'Girish Dipak',97,'Ronda Ct','Brampton','ON','6573848488','girpak@mail.com');
INSERT INTO employee (`employee_id`,`department_id`,`name`,`house_#`,`street`,`city`,`province`,`phone_number`,`email`) VALUES (8,2,'Etele Perma',666,'Natas Rd','Oakville','ON','6584994020','etele.p@mail.com');
INSERT INTO employee (`employee_id`,`department_id`,`name`,`house_#`,`street`,`city`,`province`,`phone_number`,`email`) VALUES (9,3,'Jacob Smith',734,'Night Ave','Ottawa','ON','5884848488','jacsmirht@mail.com');

/*Orders*/
INSERT INTO orders (`order_id`,`customer_id`,`total cost`,`date`) VALUES (1,1,11.98,'2022-12-15 00:00:00');
INSERT INTO orders (`order_id`,`customer_id`,`total cost`,`date`) VALUES (2,5,122.97,'2023-01-29 00:00:00');
INSERT INTO orders (`order_id`,`customer_id`,`total cost`,`date`) VALUES (3,9,43.96,'2023-02-14 00:00:00');

/*Order items*/
INSERT INTO order_items (`order_items_id`,`order_id`,`product`,`quantity`,`price_per_unit`) VALUES (1,1,35000,2,5.99);
INSERT INTO order_items (`order_items_id`,`order_id`,`product`,`quantity`,`price_per_unit`) VALUES (2,2,42000,3,40.99);
INSERT INTO order_items (`order_items_id`,`order_id`,`product`,`quantity`,`price_per_unit`) VALUES (3,3,44000,4,10.99);

/*Payment Infomation*/
INSERT INTO payment_information (`payment_id`,`payment_method`,`customer_id`,`order_id`) VALUES (1,'Visa',1,1);
INSERT INTO payment_information (`payment_id`,`payment_method`,`customer_id`,`order_id`) VALUES (2,'MasterCard',5,2);
INSERT INTO payment_information (`payment_id`,`payment_method`,`customer_id`,`order_id`) VALUES (3,'Paypal',9,3);

/*Product Review*/
INSERT INTO product_review (`review_id`,`product_id`,`customer_id`,`review_comment`) VALUES (1,12000,1,'Worked well initially but eventually wore out after a week');
INSERT INTO product_review (`review_id`,`product_id`,`customer_id`,`review_comment`) VALUES (2,14000,2,'Used it in my tv remote and still works after a year.');
INSERT INTO product_review (`review_id`,`product_id`,`customer_id`,`review_comment`) VALUES (3,32000,3,'Awesome Pre-workout, don\'t feel as sore after workouts anymore');
INSERT INTO product_review (`review_id`,`product_id`,`customer_id`,`review_comment`) VALUES (4,34000,4,'My teeth have not gotten white after a month, fake news.');

/*Shipping Info */
INSERT INTO shipping_info (`shipping_id`,`order_id`,`customer_id`,`house_#`,`street`,`city`,`province`,`shipping_cost`,`shipping_method`) VALUES (1,1,3,78,'Tomato Town','Waterloo','ON',15.99,'Normal');
INSERT INTO shipping_info (`shipping_id`,`order_id`,`customer_id`,`house_#`,`street`,`city`,`province`,`shipping_cost`,`shipping_method`) VALUES (2,2,2,23,'Summoners Rift','Mississuaga','ON',15.99,'Normal');
INSERT INTO shipping_info (`shipping_id`,`order_id`,`customer_id`,`house_#`,`street`,`city`,`province`,`shipping_cost`,`shipping_method`) VALUES (3,3,1,39,'Salty Springs','Victoria','BC',10.99,'Express');

/*Tracking Info*/
INSERT INTO tracking_info (`tracking_id`,`shipping_id`,`order_id`,`customer_id`,`status`) VALUES (1,1,1,3,'on_route');
INSERT INTO tracking_info (`tracking_id`,`shipping_id`,`order_id`,`customer_id`,`status`) VALUES (2,2,2,4,'on_route');
INSERT INTO tracking_info (`tracking_id`,`shipping_id`,`order_id`,`customer_id`,`status`) VALUES (3,3,3,6,'shipping');

/*Wish List*/
INSERT INTO wish_list (`wish_list_id`,`customer_id`,`total`) VALUES (1,3,56.97);
INSERT INTO wish_list (`wish_list_id`,`customer_id`,`total`) VALUES (2,1,400.99);
INSERT INTO wish_list (`wish_list_id`,`customer_id`,`total`) VALUES (3,2,181.98);

/*Wish List items*/
INSERT INTO wish_list_items (`wish_list_items_id`,`wish_list_id`,`products`,`quantity`,`price_per_unit`) VALUES (1,1,'31000',3,18.99);
INSERT INTO wish_list_items (`wish_list_items_id`,`wish_list_id`,`products`,`quantity`,`price_per_unit`) VALUES (2,2,'21000',1,400.99);
INSERT INTO wish_list_items (`wish_list_items_id`,`wish_list_id`,`products`,`quantity`,`price_per_unit`) VALUES (3,3,'22000',2,90.99);
