create database ecommerce_db;
use ecommerce_db;
-- table 1 --
create table customers(
customer_id int primary key auto_increment,
first_name varchar(50) not null,
last_name varchar(50) not null,
email varchar(100) unique not null,
phone varchar(15),
singup_date date default (current_date)
);
desc customers;

Insert into customers(first_name,last_name,email,phone)
values('James', 'Turner', 'james.turner@mail.com', '5552001'),
('Priya', 'Sharma', 'priya.sharma@mail.com', '5552002'),
('Lucas', 'Martin', 'lucas.martin@mail.com', '5552003'),
('Hannah', 'Lee', 'hannah.lee@mail.com', '5552004'),
('Omar', 'Farouk', 'omar.farouk@mail.com', '5552005'),
('Grace', 'Kim', 'grace.kim@mail.com', '5552006'),
('Ethan', 'Walker', 'ethan.walker@mail.com', '5552007'),
('Aisha', 'Khan', 'aisha.khan@mail.com', '5552008'),
('Noah', 'Bennett', 'noah.bennett@mail.com', '5552009'),
('Mia', 'Rodriguez', 'mia.rodriguez@mail.com', '5552010'),
('Liam', 'Foster', 'liam.foster@mail.com', '5552011'),
('Sofia', 'Rossi', 'sofia.rossi@mail.com', '5552012'),
('Ben', 'Carter', 'ben.carter@mail.com', '5552013'),
('Chloe', 'Adams', 'chloe.adams@mail.com', '5552014'),
('Ryan', 'Mitchell', 'ryan.mitchell@mail.com', '5552015'),
('Zoe', 'Campbell', 'zoe.campbell@mail.com', '5552016'),
('Adam', 'Hughes', 'adam.hughes@mail.com', '5552017'),
('Nora', 'Simmons', 'nora.simmons@mail.com', '5552018'),
('Jack', 'Barnes', 'jack.barnes@mail.com', '5552019'),
('Ivy', 'Reed', 'ivy.reed@mail.com', '5552020'),
('Leo', 'Cox', 'leo.cox@mail.com', '5552021'),
('Ella', 'Ward', 'ella.ward@mail.com', '5552022'),
('Owen', 'Price', 'owen.price@mail.com', '5552023'),
('Ava', 'Long', 'ava.long@mail.com', '5552024'),
('Max', 'Perry', 'max.perry@mail.com', '5552025'),
('Lily', 'Russell', 'lily.russell@mail.com', '5552026'),
('Dylan', 'Griffin', 'dylan.griffin@mail.com', '5552027'),
('Ruby', 'Hayes', 'ruby.hayes@mail.com', '5552028'),
('Nathan', 'Myers', 'nathan.myers@mail.com', '5552029'),
('Emily', 'Ford', 'emily.ford@mail.com', '5552030');
select * from customers;
-- table 2 --
create table Addresses(
address_id int primary key auto_increment,
customer_id int not null,
address_line varchar(200),
city varchar(50),
state varchar(50),
zip_code varchar(10),
is_default boolean default false,
foreign key(customer_id) references customers(customer_id)
);
desc addresses;
Insert into addresses(customer_id, address_line, city, state, zip_code, is_default) VALUES
(1, '12 River St', 'Austin', 'TX', '73301', TRUE),
(1, '88 Congress Ave', 'Austin', 'TX', '73344', FALSE),
(1, '5 Barton Springs Rd', 'Austin', 'TX', '73360', FALSE),
(1, '210 6th St', 'Austin', 'TX', '73390', FALSE),
(1, '77 Lamar Blvd', 'Austin', 'TX', '73301', FALSE),
(1, '33 Cesar Chavez St', 'Austin', 'TX', '73344', FALSE),
(2, '45 Lake Ave', 'Seattle', 'WA', '98101', TRUE),
(2, '120 Pine St', 'Seattle', 'WA', '98104', FALSE),
(2, '9 Denny Way', 'Seattle', 'WA', '98109', FALSE),
(2, '250 Broadway', 'Seattle', 'WA', '98122', FALSE),
(2, '18 Alki Ave', 'Seattle', 'WA', '98116', FALSE),
(2, '60 Yesler Way', 'Seattle', 'WA', '98104', FALSE),
(3, '78 Hill Rd', 'Denver', 'CO', '80201', TRUE),
(3, '145 Colfax Ave', 'Denver', 'CO', '80202', FALSE),
(3, '22 Speer Blvd', 'Denver', 'CO', '80203', FALSE),
(3, '310 Larimer St', 'Denver', 'CO', '80205', FALSE),
(3, '9 Cherry Creek Dr', 'Denver', 'CO', '80206', FALSE),
(3, '48 Federal Blvd', 'Denver', 'CO', '80204', FALSE),
(4, '9 Sunset Blvd', 'Miami', 'FL', '33101', TRUE),
(4, '200 Ocean Dr', 'Miami', 'FL', '33139', FALSE),
(4, '15 Biscayne Blvd', 'Miami', 'FL', '33132', FALSE),
(4, '77 Flagler St', 'Miami', 'FL', '33130', FALSE),
(4, '30 Collins Ave', 'Miami', 'FL', '33139', FALSE),
(4, '5 Brickell Ave', 'Miami', 'FL', '33131', FALSE),
(5, '23 Forest Ln', 'Chicago', 'IL', '60601', TRUE),
(5, '100 Michigan Ave', 'Chicago', 'IL', '60602', FALSE),
(5, '48 State St', 'Chicago', 'IL', '60603', FALSE),
(5, '19 LaSalle St', 'Chicago', 'IL', '60604', FALSE),
(5, '65 Wacker Dr', 'Chicago', 'IL', '60606', FALSE),
(5, '210 Clark St', 'Chicago', 'IL', '60610', FALSE);
select * from addresses;
-- table 3 --
create table categories(
category_id int primary key auto_increment,
category_name varchar(100) not null,
parent_category_id int,
foreign key(parent_category_id) references categories(category_id)
);
desc categories;
INSERT INTO Categories (category_name, parent_category_id) VALUES
('Electronics', NULL),               
('Clothing', NULL),                  
('Home & Kitchen', NULL),             
('Books', NULL),                     
('Sports & Outdoors', NULL),          
('Beauty & Personal Care', NULL); 
INSERT INTO Categories (category_name, parent_category_id) VALUES
('Laptops', 1),
('Smartphones', 1),
('Cameras', 1),
('Headphones', 1);
INSERT INTO Categories (category_name, parent_category_id) VALUES
('Men\'s Wear', 2),
('Women\'s Wear', 2),
('Kids Wear', 2),
('Footwear', 2);
INSERT INTO Categories (category_name, parent_category_id) VALUES
('Furniture', 3),
('Cookware', 3),
('Bedding', 3),
('Home Decor', 3);
INSERT INTO Categories (category_name, parent_category_id) VALUES
('Fiction', 4),
('Non-Fiction', 4),
('Comics & Graphic Novels', 4),
('Academic & Textbooks', 4);
INSERT INTO Categories (category_name, parent_category_id) VALUES
('Fitness Equipment', 5),
('Camping Gear', 5),
('Cycling', 5),
('Team Sports', 5);
INSERT INTO Categories (category_name, parent_category_id) VALUES
('Skincare', 6),
('Haircare', 6),
('Makeup', 6),
('Fragrances', 6);
select * from categories;

-- table 4 --
create table sellers(
seller_id int primary key auto_increment,
seller_name varchar(100) not null,
rating decimal(2,1) default 0.0,
joined_date date
);
desc sellers;
INSERT INTO Sellers (seller_name, rating, joined_date) VALUES
('TechWorld', 4.5, '2019-02-10'),
('HomeEssentials', 4.2, '2020-06-15'),
('GadgetHub', 4.7, '2018-11-01'),
('UrbanStyle Apparel', 4.1, '2021-03-22'),
('KitchenCraft', 4.4, '2020-09-05'),
('BookNest', 4.6, '2017-05-18'),
('FitZone Gear', 4.3, '2021-08-12'),
('GlowUp Beauty', 4.0, '2022-01-30'),
('CozyHome Furnishings', 3.9, '2019-07-25'),
('SoundWave Audio', 4.8, '2018-04-09'),
('PetLove Supplies', 4.2, '2020-11-14'),
('OutdoorX Adventures', 4.5, '2019-10-03'),
('CraftedGoods Co.', 3.8, '2021-06-19'),
('SmartLiving Electronics', 4.6, '2017-12-01'),
('ToyTown', 4.1, '2022-02-14'),
('EcoMart', 4.3, '2020-03-27'),
('LuxeThreads', 4.0, '2021-09-08'),
('GreenGrocer Direct', 3.7, '2019-01-16'),
('AutoParts Plus', 4.4, '2018-08-22'),
('PureSkin Naturals', 4.5, '2022-05-11'),
('FastTech Gadgets', 4.2, '2020-12-05'),
('ArtisanBrew Coffee', 4.7, '2019-04-30'),
('StationeryHub', 3.9, '2021-01-19'),
('WellnessCorner', 4.3, '2020-07-08'),
('BrightLite Lamps', 4.0, '2018-06-14'),
('TrendSetters Fashion', 4.1, '2022-03-25'),
('GameZone Store', 4.6, '2017-09-10'),
('NatureWear Outdoors', 4.4, '2019-11-29'),
('QuickFix Hardware', 3.8, '2020-05-02'),
('PureHome Cleaning Co.', 4.2, '2021-10-16');
select * from sellers;

-- table 5 --
create table products(
product_id int primary key auto_increment,
product_name varchar(150)not null,
category_id int,
seller_id int,
price decimal(10,2) not null,
stock_quantity int default 0,
created_at date default (current_date),
foreign key (category_id) references categories(category_id),
foreign key (seller_id) references sellers(seller_id)
);
desc products;
INSERT INTO Products (product_name, category_id, seller_id, price, stock_quantity) VALUES
('UltraBook Pro 14"', 7, 1, 1200.00, 25),
('SmartPhone X12', 8, 3, 799.00, 50),
('Mirrorless Camera Z200', 9, 3, 950.00, 15),
('Noise Cancelling Headphones', 10, 10, 199.99, 60),
('Men\'s Slim Fit Jeans', 11, 4, 45.00, 100),
('Women\'s Floral Summer Dress', 12, 4, 39.99, 80),
('Kids Cartoon Print T-Shirt', 13, 15, 12.50, 150),
('Running Shoes Air Flex', 14, 4, 65.00, 90),
('Ergo Office Chair', 15, 9, 180.00, 40),
('Non-Stick Cookware Set', 16, 5, 89.99, 55),
('Cotton Bedsheet Set (Queen)', 17, 9, 34.99, 70),
('Wall Art Canvas Print', 18, 13, 24.99, 45),
('The Silent Ocean (Novel)', 19, 6, 14.99, 120),
('Modern History Explained', 20, 6, 22.50, 65),
('SuperHero Chronicles Vol.1', 21, 6, 9.99, 100),
('Calculus Made Simple (Textbook)', 22, 6, 55.00, 30),
('Adjustable Dumbbell Set', 23, 7, 120.00, 35),
('4-Person Camping Tent', 24, 12, 150.00, 20),
('Mountain Bike 21-Speed', 25, 12, 320.00, 12),
('Official Size Soccer Ball', 26, 7, 19.99, 200),
('Hydrating Face Serum', 27, 20, 28.00, 75),
('Argan Oil Shampoo', 28, 6, 15.50, 90),
('Matte Lipstick Set', 29, 8, 21.00, 110),
('Eau de Parfum 100ml', 30, 8, 55.00, 40),
('Wireless Mouse', 7, 1, 25.00, 200),
('Bluetooth Smart Speaker', 10, 10, 79.99, 65),
('Stainless Steel Water Bottle', 23, 7, 18.00, 130),
('LED Desk Lamp', 18, 25, 27.50, 85),
('Organic Green Tea Pack', 4, 22, 11.99, 150),
('Yoga Mat Premium', 23, 7, 32.00, 95);
select * from products;

-- table 6 --
create table orders(
order_id int primary key auto_increment,
customer_id int not null,
address_id int not null,
order_date datetime default current_timestamp,
status enum('pending','shipped','delivered','cancelled','returned') default 'pending',
foreign key (customer_id) references customers(customer_id),
foreign key (address_id) references addresses(address_id)
);
desc orders;
alter table orders
modify status enum('pending','shipped','delivered','cancelled','returned');
-- Customer 1 (addresses 1-6)
INSERT INTO Orders (customer_id, address_id, order_date, status) VALUES
(1, 1, '2026-01-05 09:15:00', 'Delivered'),
(1, 2, '2026-02-14 11:30:00', 'Delivered'),
(1, 3, '2026-03-20 14:45:00', 'Cancelled'),
(1, 4, '2026-04-18 10:00:00', 'Delivered'),
(1, 5, '2026-05-22 16:20:00', 'Shipped'),
(1, 6, '2026-06-30 12:10:00', 'Pending');
 
-- Customer 2 (addresses 7-12)
INSERT INTO Orders (customer_id, address_id, order_date, status) VALUES
(2, 7, '2026-01-10 08:45:00', 'Delivered'),
(2, 8, '2026-02-19 13:00:00', 'Returned'),
(2, 9, '2026-03-25 09:30:00', 'Delivered'),
(2, 10, '2026-04-29 17:15:00', 'Shipped'),
(2, 11, '2026-05-15 10:50:00', 'Delivered'),
(2, 12, '2026-07-02 15:40:00', 'Pending');
 
-- Customer 3 (addresses 13-18)
INSERT INTO Orders (customer_id, address_id, order_date, status) VALUES
(3, 13, '2026-01-18 12:00:00', 'Delivered'),
(3, 14, '2026-02-27 09:20:00', 'Delivered'),
(3, 15, '2026-03-30 14:10:00', 'Cancelled'),
(3, 16, '2026-05-04 11:35:00', 'Shipped'),
(3, 17, '2026-06-11 16:50:00', 'Delivered'),
(3, 18, '2026-07-10 10:05:00', 'Pending');
 
-- Customer 4 (addresses 19-24)
INSERT INTO Orders (customer_id, address_id, order_date, status) VALUES
(4, 19, '2026-01-22 11:15:00', 'Delivered'),
(4, 20, '2026-02-08 13:40:00', 'Delivered'),
(4, 21, '2026-04-03 09:55:00', 'Returned'),
(4, 22, '2026-05-19 15:25:00', 'Shipped'),
(4, 23, '2026-06-24 12:30:00', 'Delivered'),
(4, 24, '2026-07-15 08:50:00', 'Pending');
 
-- Customer 5 
INSERT INTO Orders (customer_id, address_id, order_date, status) VALUES
(5, 25, '2026-01-29 10:20:00', 'Delivered'),
(5, 26, '2026-03-06 14:55:00', 'Cancelled'),
(5, 27, '2026-04-14 09:10:00', 'Delivered'),
(5, 28, '2026-05-27 16:35:00', 'Delivered'),
(5, 29, '2026-06-19 11:45:00', 'Shipped'),
(5, 30, '2026-07-20 13:25:00', 'Pending');
select * from orders;
-- table 7--
create table order_items(
order_item_id int primary key auto_increment,
order_id int not null, 
product_id int not null,
quantity int not null,
unit_price decimal(10,2) not null,
line_total decimal(10,2) generated always as (quantity * unit_price) stored,
foreign key (order_id) references orders(order_id),
foreign key (product_id) references products(product_id)
);
desc order_items;
INSERT INTO Order_Items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 1200.00),   -- UltraBook Pro 14"
(2, 2, 1, 799.00),    -- SmartPhone X12
(3, 3, 1, 950.00),    -- Mirrorless Camera Z200
(4, 4, 2, 199.99),    -- Noise Cancelling Headphones
(5, 5, 3, 45.00),     -- Men's Slim Fit Jeans
(6, 6, 1, 39.99),     -- Women's Floral Summer Dress
(7, 7, 4, 12.50),     -- Kids Cartoon Print T-Shirt
(8, 8, 1, 65.00),     -- Running Shoes Air Flex
(9, 9, 1, 180.00),    -- Ergo Office Chair
(10, 10, 2, 89.99),   -- Non-Stick Cookware Set
(11, 11, 2, 34.99),   -- Cotton Bedsheet Set (Queen)
(12, 12, 1, 24.99),   -- Wall Art Canvas Print
(13, 13, 3, 14.99),   -- The Silent Ocean (Novel)
(14, 14, 1, 22.50),   -- Modern History Explained
(15, 15, 5, 9.99),    -- SuperHero Chronicles Vol.1
(16, 16, 1, 55.00),   -- Calculus Made Simple (Textbook)
(17, 17, 1, 120.00),  -- Adjustable Dumbbell Set
(18, 18, 1, 150.00),  -- 4-Person Camping Tent
(19, 19, 1, 320.00),  -- Mountain Bike 21-Speed
(20, 20, 2, 19.99),   -- Official Size Soccer Ball
(21, 21, 1, 28.00),   -- Hydrating Face Serum
(22, 22, 2, 15.50),   -- Argan Oil Shampoo
(23, 23, 1, 21.00),   -- Matte Lipstick Set
(24, 24, 1, 55.00),   -- Eau de Parfum 100ml
(25, 25, 2, 25.00),   -- Wireless Mouse
(26, 26, 1, 79.99),   -- Bluetooth Smart Speaker
(27, 27, 3, 18.00),   -- Stainless Steel Water Bottle
(28, 28, 1, 27.50),   -- LED Desk Lamp
(29, 29, 4, 11.99),   -- Organic Green Tea Pack
(30, 30, 1, 32.00);   -- Yoga Mat Premium
select * from order_items;

-- table 8 --
create table payments(
payment_id int primary key auto_increment,
order_id int not null,
payment_method enum('cresdit card','debit card','paypal','cod') not null,
amount decimal (10,2)not null,
payment_date datetime default current_timestamp,
payment_status enum('success','failed','refunded')default 'success',
foreign key (order_id) references orders(order_id)
);
desc payments;
alter table payments
modify payment_method enum('credit card','debit card','paypal','cod');
INSERT INTO Payments (order_id, payment_method, amount, payment_status) VALUES
(1, 'Credit Card', 1200.00, 'Success'),
(2, 'PayPal', 799.00, 'Success'),
(3, 'Credit Card', 950.00, 'Refunded'),
(4, 'Debit Card', 399.98, 'Success'),
(5, 'COD', 135.00, 'Success'),
(6, 'PayPal', 39.99, 'Success'),
(7, 'Credit Card', 50.00, 'Success'),
(8, 'Debit Card', 65.00, 'Refunded'),
(9, 'PayPal', 180.00, 'Success'),
(10, 'Credit Card', 179.98, 'Success'),
(11, 'COD', 69.98, 'Success'),
(12, 'Debit Card', 24.99, 'Success'),
(13, 'Credit Card', 44.97, 'Success'),
(14, 'PayPal', 22.50, 'Success'),
(15, 'Credit Card', 49.95, 'Refunded'),
(16, 'Debit Card', 55.00, 'Success'),
(17, 'COD', 120.00, 'Success'),
(18, 'Credit Card', 150.00, 'Success'),
(19, 'PayPal', 320.00, 'Success'),
(20, 'Debit Card', 39.98, 'Success'),
(21, 'Credit Card', 28.00, 'Refunded'),
(22, 'COD', 31.00, 'Success'),
(23, 'PayPal', 21.00, 'Success'),
(24, 'Debit Card', 55.00, 'Success'),
(25, 'Credit Card', 50.00, 'Success'),
(26, 'PayPal', 79.99, 'Refunded'),
(27, 'COD', 54.00, 'Success'),
(28, 'Debit Card', 27.50, 'Success'),
(29, 'Credit Card', 47.96, 'Success'),
(30, 'PayPal', 32.00, 'Success');
select * from payments;

-- table 9--
create table reviews(
review_id int primary key auto_increment,
product_id int not null,
customer_id int not null,
rating int check(rating between 1 and 5),
comment varchar(500),
review_date date default (current_date),
foreign key(product_id) references products(product_id),
foreign key(customer_id) references customers(customer_id)
);
desc reviews;
INSERT INTO Reviews (product_id, customer_id, rating, comment, review_date) VALUES
(1, 1, 5, 'Excellent performance and build quality', '2026-01-08'),
(2, 2, 4, 'Great phone, battery could be better', '2026-02-16'),
(3, 3, 5, 'Stunning photos, worth every penny', '2026-03-23'),
(4, 4, 4, 'Comfortable and great noise cancellation', '2026-04-20'),
(5, 5, 3, 'Fit runs a bit small', '2026-01-30'),
(6, 1, 4, 'Lovely fabric and print', '2026-02-17'),
(7, 2, 5, 'My kid loves it, great print quality', '2026-03-27'),
(8, 3, 4, 'Comfortable for daily jogs', '2026-04-30'),
(9, 4, 3, 'Comfortable but assembly was tricky', '2026-02-10'),
(10, 5, 5, 'Non-stick coating works perfectly', '2026-04-16'),
(11, 1, 4, 'Soft and good quality bedsheets', '2026-05-18'),
(12, 2, 3, 'Colors slightly different from the photo', '2026-05-20'),
(13, 3, 5, 'Couldn\'t put it down, gripping story', '2026-01-22'),
(14, 4, 4, 'Well researched and easy to follow', '2026-02-11'),
(15, 5, 5, 'Great art style, fun read', '2026-01-19'),
(16, 1, 4, 'Clear explanations, helped a lot', '2026-05-05'),
(17, 2, 5, 'Sturdy and great for home workouts', '2026-05-16'),
(18, 3, 4, 'Easy to set up, kept us dry', '2026-05-05'),
(19, 4, 5, 'Smooth gear shifts, great value', '2026-06-25'),
(20, 5, 4, 'Good bounce and durability', '2026-06-19'),
(21, 1, 5, 'Skin feels noticeably smoother', '2026-05-01'),
(22, 2, 4, 'Nice scent, leaves hair soft', '2026-05-17'),
(23, 3, 3, 'Good color payoff, dries out lips a bit', '2026-05-06'),
(24, 4, 5, 'Long lasting scent, lovely bottle', '2026-05-28'),
(25, 5, 5, 'Smooth and responsive', '2026-01-11'),
(26, 1, 4, 'Good sound for the price', '2026-06-04'),
(27, 2, 5, 'Keeps water cold all day', '2026-06-20'),
(28, 3, 4, 'Bright and adjustable, good for desk work', '2026-06-25'),
(29, 4, 4, 'Refreshing taste, good quality leaves', '2026-06-20'),
(30, 5, 5, 'Great grip and cushioning', '2026-07-21');
select * from reviews;

-- table 10 --

create table cart(
cart_id int primary key auto_increment,
customer_id int not null,
product_id int not null,
quantity int default 1,
added_at datetime default current_timestamp,
foreign key (customer_id) references customers(customer_id),
foreign key (product_id) references products(product_id)
);
desc cart;
INSERT INTO Cart (customer_id, product_id, quantity, added_at) VALUES
(1, 1, 1, '2026-07-01 09:10:00'),
(2, 2, 2, '2026-07-01 10:20:00'),
(3, 3, 1, '2026-07-02 11:05:00'),
(4, 4, 1, '2026-07-02 12:40:00'),
(5, 5, 3, '2026-07-03 08:55:00'),
(1, 6, 1, '2026-07-03 14:15:00'),
(2, 7, 2, '2026-07-04 09:30:00'),
(3, 8, 1, '2026-07-04 16:00:00'),
(4, 9, 1, '2026-07-05 10:10:00'),
(5, 10, 2, '2026-07-05 11:45:00'),
(1, 11, 1, '2026-07-06 09:00:00'),
(2, 12, 1, '2026-07-06 13:25:00'),
(3, 13, 3, '2026-07-07 15:50:00'),
(4, 14, 1, '2026-07-07 17:20:00'),
(5, 15, 2, '2026-07-08 08:40:00'),
(1, 16, 1, '2026-07-08 12:05:00'),
(2, 17, 1, '2026-07-09 09:55:00'),
(3, 18, 1, '2026-07-09 14:30:00'),
(4, 19, 1, '2026-07-10 10:15:00'),
(5, 20, 2, '2026-07-10 16:40:00'),
(1, 21, 1, '2026-07-11 09:20:00'),
(2, 22, 2, '2026-07-11 11:50:00'),
(3, 23, 1, '2026-07-12 13:05:00'),
(4, 24, 1, '2026-07-12 15:30:00'),
(5, 25, 3, '2026-07-13 08:45:00'),
(1, 26, 1, '2026-07-13 10:55:00'),
(2, 27, 2, '2026-07-14 12:20:00'),
(3, 28, 1, '2026-07-14 14:50:00'),
(4, 29, 1, '2026-07-15 09:35:00'),
(5, 30, 1, '2026-07-15 17:10:00');
select * from cart;

-- table 11 --
create table coupons(
coupon_id int primary key auto_increment,
code varchar(20) unique not null,
discount_percent decimal(5,2),
valid_from date,
valid_until date,
min_order_value decimal(10,2) default 0
);
desc coupons;
INSERT INTO Coupons (code, discount_percent, valid_from, valid_until, min_order_value) VALUES
('WELCOME10', 10.00, '2026-01-01', '2026-12-31', 50.00),
('SUMMER20', 20.00, '2026-06-01', '2026-08-31', 100.00),
('VIP30', 30.00, '2026-01-01', '2026-12-31', 500.00),
('NEWYEAR15', 15.00, '2026-01-01', '2026-01-31', 40.00),
('FLASH25', 25.00, '2026-02-10', '2026-02-17', 75.00),
('SPRING10', 10.00, '2026-03-01', '2026-04-30', 30.00),
('BIGSALE35', 35.00, '2026-07-01', '2026-07-31', 200.00),
('FREESHIP', 5.00, '2026-01-01', '2026-12-31', 0.00),
('STUDENT10', 10.00, '2026-01-01', '2026-12-31', 20.00),
('LOYALTY15', 15.00, '2026-01-01', '2026-12-31', 150.00),
('WEEKEND20', 20.00, '2026-04-01', '2026-12-31', 60.00),
('APRILFOOL5', 5.00, '2026-04-01', '2026-04-02', 10.00),
('MOTHERSDAY12', 12.00, '2026-05-01', '2026-05-10', 45.00),
('FATHERSDAY12', 12.00, '2026-06-10', '2026-06-21', 45.00),
('MEGA40', 40.00, '2026-11-20', '2026-11-30', 300.00),
('CYBERMON30', 30.00, '2026-11-30', '2026-12-01', 100.00),
('DIWALI20', 20.00, '2026-10-15', '2026-11-05', 80.00),
('FIRSTORDER20', 20.00, '2026-01-01', '2026-12-31', 25.00),
('REFER5', 5.00, '2026-01-01', '2026-12-31', 0.00),
('CLEARANCE50', 50.00, '2026-08-01', '2026-08-15', 250.00),
('EMPLOYEE25', 25.00, '2026-01-01', '2026-12-31', 0.00),
('APP10', 10.00, '2026-01-01', '2026-12-31', 35.00),
('BUNDLE15', 15.00, '2026-03-15', '2026-09-15', 90.00),
('HOLIDAY18', 18.00, '2026-12-01', '2026-12-31', 100.00),
('BDAY10', 10.00, '2026-01-01', '2026-12-31', 20.00),
('ANNIVERSARY25', 25.00, '2026-05-01', '2026-05-31', 120.00),
('TECHDEAL30', 30.00, '2026-09-01', '2026-09-30', 400.00),
('FASHION15', 15.00, '2026-02-01', '2026-02-28', 60.00),
('KIDS10', 10.00, '2026-01-01', '2026-12-31', 25.00),
('LASTCHANCE20', 20.00, '2026-12-25', '2026-12-31', 50.00);
select * from coupons;

use ecommerce_db;
SELECT * FROM Customers;

SELECT product_name, price FROM Products WHERE price > 100 ORDER BY price DESC;
-- ================================================
-- 1. List orders placed in a specific month --
-- =================================================
SELECT order_id, customer_id, order_date, status
FROM Orders
WHERE order_date BETWEEN '2026-03-01' AND '2026-03-31' order by order_id asc;


-- 1.1 Find all products from a specific seller --
SELECT p.product_name, p.price
FROM Products p
JOIN Sellers s ON p.seller_id = s.seller_id
WHERE s.seller_name = 'TechWorld';

-- 1.2 Products currently out of / low on stock
SELECT product_name, stock_quantity FROM Products WHERE stock_quantity < 20;

-- 1.3 Customers who signed up in a given year
SELECT first_name, last_name, singup_date FROM customers
WHERE YEAR(singup_date) = 2026;
use ecommerce_db;
-- ==================================================================
-- 2. List all orders with customer name and total order value
-- =================================================================
SELECT o.order_id, c.first_name, c.last_name, o.status,
       SUM(oi.line_total) AS order_total
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Order_Items oi ON o.order_id = oi.order_id
GROUP BY o.order_id, c.first_name, c.last_name, o.status
ORDER BY o.order_date;

-- 2.1 Full order detail: customer, product, quantity, seller
SELECT o.order_id, c.first_name, c.last_name,
       p.product_name, oi.quantity, oi.unit_price, s.seller_name
FROM Order_Items oi
JOIN Orders o ON oi.order_id = o.order_id
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Products p ON oi.product_id = p.product_id
JOIN Sellers s ON p.seller_id = s.seller_id
ORDER BY o.order_id;

-- 2.2 Orders with shipping address details
SELECT o.order_id, c.first_name, c.last_name, a.address_line, a.city, a.state
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Addresses a ON o.address_id = a.address_id;

-- 2.3 Products with category and sub-category hierarchy (self-join)
SELECT p.product_name, child.category_name AS sub_category,
       parent.category_name AS main_category
FROM Products p
JOIN Categories child ON p.category_id = child.category_id
LEFT JOIN Categories parent ON child.parent_category_id = parent.category_id;
 
-- 2.4 Payment details with customer and order status
SELECT c.first_name, c.last_name, o.order_id, o.status,
       pay.payment_method, pay.amount, pay.payment_status
FROM Payments pay
JOIN Orders o ON pay.order_id = o.order_id
JOIN Customers c ON o.customer_id = c.customer_id;
 use ecommerce_db;
-- 2.5 LEFT JOIN: all products, even those with zero orders
SELECT p.product_name, COALESCE(SUM(oi.quantity), 0) AS total_sold
FROM Products p
LEFT JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY p.product_name;
-- 
-- ======================================
-- SECTION 3: AGGREGATES & GROUP BY
-- ======================================

-- 3.1 Total revenue across all delivered orders
SELECT SUM(oi.line_total) AS total_revenue
FROM Order_Items oi
JOIN Orders o ON oi.order_id = o.order_id
WHERE o.status = 'Delivered';
 
-- 3.2 Revenue per category
SELECT cat.category_name, SUM(oi.line_total) AS revenue
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
JOIN Categories cat ON p.category_id = cat.category_id
GROUP BY cat.category_name
ORDER BY revenue DESC;
 
-- 3.3 Top 5 best-selling products by quantity
SELECT p.product_name, SUM(oi.quantity) AS total_sold
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
LIMIT 5;
 
-- 3.4 Average order value per customer
SELECT c.first_name, c.last_name, AVG(order_totals.total) AS avg_order_value
FROM Customers c
JOIN (
    SELECT o.order_id, o.customer_id, SUM(oi.line_total) AS total
    FROM Orders o
    JOIN Order_Items oi ON o.order_id = oi.order_id
    GROUP BY o.order_id, o.customer_id
) AS order_totals ON c.customer_id = order_totals.customer_id
GROUP BY c.customer_id;
 
-- 3.5 Order count by status
SELECT status, COUNT(*) AS num_orders FROM Orders GROUP BY status;
 -- =================================================================================================================================
-- 3.6 Number of products per seller, only sellers with 2+ products
SELECT s.seller_name, COUNT(p.product_id) AS num_products
FROM Sellers s
JOIN Products p ON s.seller_id = p.seller_id
GROUP BY s.seller_name
HAVING COUNT(p.product_id) >= 2;
 
-- 3.7 Monthly revenue trend
SELECT DATE_FORMAT(o.order_date, '%Y-%m') AS month,
       COUNT(DISTINCT o.order_id) AS num_orders,
       SUM(oi.line_total) AS revenue
FROM Orders o
JOIN Order_Items oi ON o.order_id = oi.order_id
GROUP BY month
ORDER BY month;
 
-- 3.8 Average product rating per seller
SELECT s.seller_name, AVG(r.rating) AS avg_rating
FROM Sellers s
JOIN Products p ON s.seller_id = p.seller_id
JOIN Reviews r ON p.product_id = r.product_id
GROUP BY s.seller_name
ORDER BY avg_rating DESC;

-- ===========================================================
-- SECTION 4: SUBQUERIES
-- ============================================================
 
-- 4.1 Customers who have never placed an order
SELECT first_name, last_name
FROM Customers
WHERE customer_id NOT IN (SELECT DISTINCT customer_id FROM Orders);
 
-- 4.2 Products priced above the overall average price
SELECT product_name, price
FROM Products
WHERE price > (SELECT AVG(price) FROM Products);
 
-- 4.3 Customers whose total spend exceeds $500 (correlated subquery style via HAVING)
SELECT c.first_name, c.last_name, SUM(oi.line_total) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Order_Items oi ON o.order_id = oi.order_id
GROUP BY c.customer_id
HAVING SUM(oi.line_total) > 500;
 
-- 4.4 Most expensive product in each category (correlated subquery)
SELECT p.product_name, p.category_id, p.price
FROM Products p
WHERE p.price = (
    SELECT MAX(p2.price) FROM Products p2 WHERE p2.category_id = p.category_id
);
 
-- 4.5 Customers eligible for a coupon based on cart value
SELECT c.first_name, c.last_name, cart_total.total, co.code
FROM Customers c
JOIN (
    SELECT customer_id, SUM(pr.price * ca.quantity) AS total
    FROM Cart ca
    JOIN Products pr ON ca.product_id = pr.product_id
    GROUP BY customer_id
) AS cart_total ON c.customer_id = cart_total.customer_id
JOIN Coupons co ON cart_total.total >= co.min_order_value
WHERE co.valid_until >= CURRENT_DATE;
 
-- 4.6 Products that have never been reviewed
SELECT product_name FROM Products
WHERE product_id NOT IN (SELECT DISTINCT product_id FROM Reviews);
 
 -- =========================================================
 -- SECTION 5: STORED PROCEDURES
-- ============================================================
 
-- 5.1 Get full order history for a given customer
DELIMITER $$
CREATE PROCEDURE GetCustomerOrders(IN p_customer_id INT)
BEGIN
    SELECT o.order_id, o.order_date, o.status,
           SUM(oi.line_total) AS order_total
    FROM Orders o
    JOIN Order_Items oi ON o.order_id = oi.order_id
    WHERE o.customer_id = p_customer_id
    GROUP BY o.order_id, o.order_date, o.status
    ORDER BY o.order_date;
END $$
DELIMITER ;
 
-- Usage: CALL GetCustomerOrders(1);
 
 
-- 5.2 Place a new order (creates order + one line item, adjusts stock)
DELIMITER $$
CREATE PROCEDURE PlaceOrder(
    IN p_customer_id INT,
    IN p_address_id INT,
    IN p_product_id INT,
    IN p_quantity INT
)
BEGIN
    DECLARE v_price DECIMAL(10,2);
    DECLARE v_stock INT;
    DECLARE v_order_id INT;
 
    SELECT price, stock_quantity INTO v_price, v_stock
    FROM Products WHERE product_id = p_product_id;
 
    IF v_stock < p_quantity THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Insufficient stock for this product';
    ELSE
        INSERT INTO Orders (customer_id, address_id, order_date, status)
        VALUES (p_customer_id, p_address_id, NOW(), 'Pending');
 
        SET v_order_id = LAST_INSERT_ID();
 
        INSERT INTO Order_Items (order_id, product_id, quantity, unit_price)
        VALUES (v_order_id, p_product_id, p_quantity, v_price);
 
        UPDATE Products
        SET stock_quantity = stock_quantity - p_quantity
        WHERE product_id = p_product_id;
    END IF;
END $$
DELIMITER ;
 
-- Usage: CALL PlaceOrder(2, 7, 5, 1);
 
 
-- 5.3 Get total revenue between two dates
DELIMITER $$
CREATE PROCEDURE RevenueBetweenDates(IN p_start DATE, IN p_end DATE)
BEGIN
    SELECT SUM(oi.line_total) AS total_revenue
    FROM Orders o
    JOIN Order_Items oi ON o.order_id = oi.order_id
    WHERE DATE(o.order_date) BETWEEN p_start AND p_end;
END $$
DELIMITER ;
 
-- Usage: CALL RevenueBetweenDates('2026-01-01', '2026-06-30');
 
 
-- ============================================================
-- SECTION 6: FUNCTIONS
-- ============================================================
 
-- 6.1 Return total revenue generated by a single product
DELIMITER $$
CREATE FUNCTION GetProductRevenue(p_product_id INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE v_revenue DECIMAL(10,2);
    SELECT COALESCE(SUM(line_total), 0) INTO v_revenue
    FROM Order_Items
    WHERE product_id = p_product_id;
    RETURN v_revenue;
END $$
DELIMITER ;
 
-- Usage: SELECT product_name, GetProductRevenue(product_id) AS revenue FROM Products;
 
 
-- 6.2 Return a customer's loyalty tier based on lifetime spend
DELIMITER $$
CREATE FUNCTION GetLoyaltyTier(p_customer_id INT)
RETURNS VARCHAR(20)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE v_total DECIMAL(10,2);
    DECLARE v_tier VARCHAR(20);
 
    SELECT COALESCE(SUM(oi.line_total), 0) INTO v_total
    FROM Orders o
    JOIN Order_Items oi ON o.order_id = oi.order_id
    WHERE o.customer_id = p_customer_id;
 
    IF v_total >= 1000 THEN
        SET v_tier = 'Gold';
    ELSEIF v_total >= 300 THEN
        SET v_tier = 'Silver';
    ELSE
        SET v_tier = 'Bronze';
    END IF;
 
    RETURN v_tier;
END $$
DELIMITER ;
 
-- Usage: SELECT first_name, GetLoyaltyTier(customer_id) AS tier FROM Customers;
 
 
-- 6.3 Check if a product is in stock
DELIMITER $$
CREATE FUNCTION IsInStock(p_product_id INT)
RETURNS BOOLEAN
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE v_stock INT;
    SELECT stock_quantity INTO v_stock FROM Products WHERE product_id = p_product_id;
    RETURN v_stock > 0;
END $$
DELIMITER ;
 
-- Usage:
SELECT product_name FROM Products WHERE IsInStock(product_id);

-- ======================================================
 -- SECTION 7: TRIGGERS
-- ============================================================

-- 7.1 Prevent negative stock at the database level (before insert)
DELIMITER $$
CREATE TRIGGER trg_check_stock_before_order_item
BEFORE INSERT ON Order_Items
FOR EACH ROW
BEGIN
    DECLARE v_stock INT;
    SELECT stock_quantity INTO v_stock FROM Products WHERE product_id = NEW.product_id;
    IF v_stock < NEW.quantity THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot insert order item: insufficient stock';
    END IF;
END $$
DELIMITER ;

-- 7.2 Auto-decrement stock after an order item is inserted
DELIMITER $$
CREATE TRIGGER trg_reduce_stock_after_order_item
AFTER INSERT ON Order_Items
FOR EACH ROW
BEGIN
    UPDATE Products
    SET stock_quantity = stock_quantity - NEW.quantity
    WHERE product_id = NEW.product_id;
END $$
DELIMITER ;

-- 7.3 Restore stock if an order is cancelled (after update on Orders)
DELIMITER $$
CREATE TRIGGER trg_restore_stock_on_cancel
AFTER UPDATE ON Orders
FOR EACH ROW
BEGIN
    IF NEW.status = 'Cancelled' AND OLD.status <> 'Cancelled' THEN
        UPDATE Products p
        JOIN Order_Items oi ON p.product_id = oi.product_id
        SET p.stock_quantity = p.stock_quantity + oi.quantity
        WHERE oi.order_id = NEW.order_id;
    END IF;
END $$
DELIMITER ;

-- 7.4 Audit log table + trigger for price changes
CREATE TABLE Price_Change_Log (
    log_id      INT PRIMARY KEY AUTO_INCREMENT,
    product_id  INT,
    old_price   DECIMAL(10,2),
    new_price   DECIMAL(10,2),
    changed_at  DATETIME DEFAULT CURRENT_TIMESTAMP
);

DELIMITER $$
CREATE TRIGGER trg_log_price_change
AFTER UPDATE ON Products
FOR EACH ROW
BEGIN
    IF OLD.price <> NEW.price THEN
        INSERT INTO Price_Change_Log (product_id, old_price, new_price)
        VALUES (OLD.product_id, OLD.price, NEW.price);
    END IF;
END $$
DELIMITER ;


-- ============================================================
-- SECTION 8: EVENT SCHEDULER
-- ============================================================

-- Enable the event scheduler (required once per server session/config)
SET GLOBAL event_scheduler = ON;

-- 8.1 Daily event: remove abandoned cart items older than 30 days
DELIMITER $$
CREATE EVENT ev_clear_abandoned_carts
ON SCHEDULE EVERY 1 DAY
STARTS CURRENT_TIMESTAMP
DO
BEGIN
    DELETE FROM Cart WHERE added_at < (CURRENT_DATE - INTERVAL 30 DAY);
END $$
DELIMITER ;

-- 8.2 Weekly event: archive delivered orders older than 6 months
CREATE TABLE IF NOT EXISTS Orders_Archive LIKE Orders;

DELIMITER $$
CREATE EVENT ev_archive_old_orders
ON SCHEDULE EVERY 1 WEEK
STARTS CURRENT_TIMESTAMP
DO
BEGIN
    INSERT INTO Orders_Archive
    SELECT * FROM Orders
    WHERE status = 'Delivered' AND order_date < (CURRENT_DATE - INTERVAL 6 MONTH);

    DELETE FROM Orders
    WHERE status = 'Delivered' AND order_date < (CURRENT_DATE - INTERVAL 6 MONTH);
END $$
DELIMITER ;

-- 8.3 Daily event: flag expired coupons (logs them; no is_active column to update)
CREATE TABLE IF NOT EXISTS Expired_Coupon_Log (
    log_id      INT PRIMARY KEY AUTO_INCREMENT,
    coupon_code VARCHAR(20),
    logged_at   DATETIME DEFAULT CURRENT_TIMESTAMP
);

DELIMITER $$
CREATE EVENT ev_log_expired_coupons
ON SCHEDULE EVERY 1 DAY
STARTS CURRENT_TIMESTAMP
DO
BEGIN
    INSERT INTO Expired_Coupon_Log (coupon_code)
    SELECT code FROM Coupons WHERE valid_until < CURRENT_DATE;
END $$
DELIMITER ;

-- View / manage events:
-- SHOW EVENTS;
-- DROP EVENT ev_clear_abandoned_carts;
-- ===========================================================
-- SECTION 9: EVENT SCHEDULER
-- ============================================================

-- Enable the event scheduler (required once per server session/config)
SET GLOBAL event_scheduler = ON;

-- 9.1 Daily event: remove abandoned cart items older than 30 days
DELIMITER $$
CREATE EVENT ev_clear_abandoned_carts
ON SCHEDULE EVERY 1 DAY
STARTS CURRENT_TIMESTAMP
DO
BEGIN
    DELETE FROM Cart WHERE added_at < (CURRENT_DATE - INTERVAL 30 DAY);
END $$
DELIMITER ;

-- 9.2 Weekly event: archive delivered orders older than 6 months
CREATE TABLE IF NOT EXISTS Orders_Archive LIKE Orders;

DELIMITER $$
CREATE EVENT ev_archive_old_orders
ON SCHEDULE EVERY 1 WEEK
STARTS CURRENT_TIMESTAMP
DO
BEGIN
    INSERT INTO Orders_Archive
    SELECT * FROM Orders
    WHERE status = 'Delivered' AND order_date < (CURRENT_DATE - INTERVAL 6 MONTH);

    DELETE FROM Orders
    WHERE status = 'Delivered' AND order_date < (CURRENT_DATE - INTERVAL 6 MONTH);
END $$
DELIMITER ;

-- 9.3 Daily event: flag expired coupons (logs them; no is_active column to update)
CREATE TABLE IF NOT EXISTS Expired_Coupon_Log (
    log_id      INT PRIMARY KEY AUTO_INCREMENT,
    coupon_code VARCHAR(20),
    logged_at   DATETIME DEFAULT CURRENT_TIMESTAMP
);

DELIMITER $$
CREATE EVENT ev_log_expired_coupons
ON SCHEDULE EVERY 1 DAY
STARTS CURRENT_TIMESTAMP
DO
BEGIN
    INSERT INTO Expired_Coupon_Log (coupon_code)
    SELECT code FROM Coupons WHERE valid_until < CURRENT_DATE;
END $$
DELIMITER ;




-- ============================================================
-- SECTION 10: GRANT / REVOKE (USER PRIVILEGES)
-- ============================================================

-- 10.1 Create sample users
CREATE USER IF NOT EXISTS 'app_readonly'@'localhost' IDENTIFIED BY 'ReadOnlyPass123!';
CREATE USER IF NOT EXISTS 'app_admin'@'localhost' IDENTIFIED BY 'AdminPass123!';
CREATE USER IF NOT EXISTS 'app_support'@'localhost' IDENTIFIED BY 'SupportPass123!';

-- 10.2 Read-only user: can only SELECT from the database
GRANT SELECT ON ecommerce_db.* TO 'app_readonly'@'localhost';

-- 10.3 Admin user: full privileges on the database
GRANT ALL PRIVILEGES ON ecommerce_db.* TO 'app_admin'@'localhost';

-- 10.4 Support user: can view and update orders/payments, but not delete or touch products
GRANT SELECT, UPDATE ON ecommerce_db.Orders TO 'app_support'@'localhost';
GRANT SELECT, UPDATE ON ecommerce_db.Payments TO 'app_support'@'localhost';
GRANT SELECT ON ecommerce_db.Customers TO 'app_support'@'localhost';

-- 10.5 Grant EXECUTE on specific stored procedures only
GRANT EXECUTE ON PROCEDURE ecommerce_db.GetCustomerOrders TO 'app_support'@'localhost';

-- 10.6 Revoke examples
REVOKE UPDATE ON ecommerce_db.Payments FROM 'app_support'@'localhost';
REVOKE ALL PRIVILEGES ON ecommerce_db.* FROM 'app_readonly'@'localhost';

-- 10.7 Apply changes immediately
FLUSH PRIVILEGES;

-- View a user's current privileges:
-- SHOW GRANTS FOR 'app_support'@'localhost';

-- =========================================================
-- SECTION 11: WINDOW FUNCTIONS
-- ============================================================
 
-- 11.1 Rank sellers by total revenue
SELECT s.seller_name, SUM(oi.line_total) AS total_revenue,
       RANK() OVER (ORDER BY SUM(oi.line_total) DESC) AS seller_rank
FROM Sellers s
JOIN Products p ON s.seller_id = p.seller_id
JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY s.seller_name;
 
-- 11.2 Customer lifetime value ranking
SELECT c.first_name, c.last_name, SUM(oi.line_total) AS lifetime_value,
       DENSE_RANK() OVER (ORDER BY SUM(oi.line_total) DESC) AS value_rank
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Order_Items oi ON o.order_id = oi.order_id
GROUP BY c.customer_id;
 
-- 11.3 Running total of revenue by order date
SELECT o.order_id, o.order_date, SUM(oi.line_total) AS order_total,
       SUM(SUM(oi.line_total)) OVER (ORDER BY o.order_date) AS running_total
FROM Orders o
JOIN Order_Items oi ON o.order_id = oi.order_id
GROUP BY o.order_id, o.order_date
ORDER BY o.order_date;
 
-- 11.4 Rank products within each category by price
SELECT product_name, category_id, price,
       RANK() OVER (PARTITION BY category_id ORDER BY price DESC) AS price_rank
FROM Products;
 
-- 11.5 Percentage of total revenue contributed by each product
SELECT p.product_name, SUM(oi.line_total) AS revenue,
       ROUND(SUM(oi.line_total) * 100.0 / SUM(SUM(oi.line_total)) OVER (), 2) AS pct_of_total
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.product_name;

-- ========================================================
-- SECTION 12: VIEWS
-- ============================================================
 
-- 12.1 Product performance dashboard
CREATE OR REPLACE VIEW Product_Performance AS
SELECT p.product_id, p.product_name,
       COALESCE(SUM(oi.quantity), 0) AS units_sold,
       COALESCE(SUM(oi.line_total), 0) AS revenue,
       COALESCE(AVG(r.rating), 0) AS avg_rating
FROM Products p
LEFT JOIN Order_Items oi ON p.product_id = oi.product_id
LEFT JOIN Reviews r ON p.product_id = r.product_id
GROUP BY p.product_id;
 
SELECT * FROM Product_Performance ORDER BY revenue DESC;
 
-- 12.2 Customer order summary
CREATE OR REPLACE VIEW Customer_Order_Summary AS
SELECT c.customer_id, c.first_name, c.last_name,
       COUNT(DISTINCT o.order_id) AS total_orders,
       COALESCE(SUM(oi.line_total), 0) AS total_spent
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
LEFT JOIN Order_Items oi ON o.order_id = oi.order_id
GROUP BY c.customer_id;
 
SELECT * FROM Customer_Order_Summary ORDER BY total_spent DESC;
 
-- ============================================================
-- SECTION 13: DATA MODIFICATION (UPDATE / DELETE)
-- ============================================================
 
-- 13.1 Mark an order as Delivered
UPDATE Orders SET status = 'Delivered' WHERE order_id = 6;
 
-- 13.2 Apply a 10% price cut to a specific category
UPDATE Products
SET price = price * 0.90
WHERE category_id = (SELECT category_id FROM Categories WHERE category_name = 'Smartphones');
 
-- 13.3 Reduce stock after a sale (example for product_id 25, quantity 2)
UPDATE Products SET stock_quantity = stock_quantity - 2 WHERE product_id = 25;
 
-- 13.4 Remove cart items older than 30 days (abandoned cart cleanup)
DELETE FROM Cart WHERE added_at < (CURRENT_DATE - INTERVAL 30 DAY);
 
-- 13.5 Deactivate expired coupons (soft-delete style, if a column existed)
-- Example shown as a SELECT since Coupons has no is_active column:
SELECT code FROM Coupons WHERE valid_until < CURRENT_DATE;
