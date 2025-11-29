-- No SQL could be generated for the selected object.
DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(150),
    country VARCHAR(50)
);

CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    price NUMERIC(10,2),
    category_id INT REFERENCES categories(category_id),
    stock INT
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    order_date DATE,
    total_amount NUMERIC(10,2)
);

CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    product_id INT REFERENCES products(product_id),
    quantity INT,
    item_price NUMERIC(10,2)
);

INSERT INTO users (name, email, country) VALUES
('Amit Sharma', 'amit@example.com', 'India'),
('Rahul Verma', 'rahul@example.com', 'India'),
('Priya Singh', 'priya@example.com', 'India'),
('John Doe', 'john@example.com', 'USA'),
('Emily Clark', 'emily@example.com', 'USA'),
('Michael Foster', 'michael@example.com', 'UK'),
('Sarah Johnson', 'sarah@example.com', 'UK'),
('Carlos Gomez', 'carlos@example.com', 'Mexico'),
('Ana Rodriguez', 'ana@example.com', 'Mexico'),
('David Lee', 'david@example.com', 'Canada'),
('Emma Wilson', 'emma@example.com', 'Canada'),
('Oliver Brown', 'oliver@example.com', 'Australia'),
('Sophia Davis', 'sophia@example.com', 'Australia'),
('Liam Garcia', 'liam@example.com', 'Spain'),
('Isabella Martinez', 'isabella@example.com', 'Spain'),
('Mohan Rao', 'mohan@example.com', 'India'),
('Dilip Kumar', 'dilip@example.com', 'India'),
('Riya Kapoor', 'riya@example.com', 'India'),
('Harsh Patel', 'harsh@example.com', 'India'),
('Sam Wilson', 'sam@example.com', 'USA'),
('Jacob Hall', 'jacob@example.com', 'USA'),
('Grace Miller', 'grace@example.com', 'UK'),
('Oscar King', 'oscar@example.com', 'UK'),
('Lucas Young', 'lucas@example.com', 'Canada'),
('Mia Scott', 'mia@example.com', 'Australia');

INSERT INTO categories (name) VALUES
('Electronics'), ('Fashion'), ('Grocery'),
('Books'), ('Home Appliances'), ('Toys'),
('Sports'), ('Beauty'), ('Automotive'), ('Furniture');

INSERT INTO products (name, price, category_id, stock) VALUES
('iPhone 14', 79999, 1, 50),
('Samsung TV 55"', 55000, 5, 30),
('Nike Shoes', 4500, 2, 100),
('Adidas Shoes', 5000, 2, 95),
('Rice Bag 25kg', 1200, 3, 200),
('Olive Oil 1L', 650, 3, 150),
('Harry Potter Book Set', 3500, 4, 60),
('Action Figure Toy', 1500, 6, 80),
('Treadmill', 35000, 7, 10),
('Gym Dumbbells', 1500, 7, 200),
('Face Cream', 800, 8, 120),
('Car Cover', 1800, 9, 75),
('Office Chair', 6500, 10, 40),
('Bluetooth Earbuds', 2500, 1, 120),
('Laptop HP', 65000, 1, 25),
('Laptop Dell', 72000, 1, 22),
('Sony Speaker', 4500, 1, 65),
('LED Table Lamp', 1200, 10, 50),
('Backpack', 1800, 2, 80),
('Coffee Maker', 3500, 5, 20),
('Monitor 24"', 12000, 1, 40),
('Keyboard Mechanical', 4500, 1, 55),
('Mouse Gaming', 1500, 1, 85),
('Perfume Set', 2500, 8, 70),
('Baby Shampoo', 300, 8, 90),
('Football', 800, 7, 150),
('Cricket Bat', 2200, 7, 60),
('Car Vacuum Cleaner', 2800, 9, 40),
('Study Desk', 5500, 10, 20),
('Portable Fan', 2200, 5, 35);

INSERT INTO orders (user_id, order_date, total_amount) VALUES
(1, '2024-01-10', 4500),
(2, '2024-02-11', 12000),
(3, '2024-03-05', 5500),
(4, '2024-03-15', 79999),
(5, '2024-04-02', 35000),
(6, '2024-04-18', 800),
(7, '2024-05-09', 1800),
(8, '2024-05-15', 2500),
(9, '2024-06-06', 72000),
(10, '2024-06-18', 3500),
(11, '2024-07-01', 65000),
(12, '2024-07-21', 1500),
(13, '2024-08-11', 6500),
(14, '2024-09-01', 3500),
(15, '2024-09-15', 1800),
(16, '2024-10-07', 4500),
(17, '2024-10-22', 800),
(18, '2024-11-03', 1200),
(19, '2024-11-19', 35000),
(20, '2024-12-05', 5500);

INSERT INTO order_items (order_id, product_id, quantity, item_price) VALUES
(1, 3, 1, 4500),
(2, 21, 1, 12000),
(3, 8, 2, 1500),
(3, 6, 1, 650),
(4, 1, 1, 79999),
(5, 9, 1, 35000),
(6, 11, 1, 800),
(7, 12, 1, 1800),
(8, 14, 1, 2500),
(9, 16, 1, 72000),
(10, 7, 1, 3500),
(11, 15, 1, 65000),
(12, 10, 1, 1500),
(13, 13, 1, 6500),
(14, 20, 1, 3500),
(15, 19, 1, 1800),
(16, 17, 1, 4500),
(17, 25, 2, 300),
(18, 18, 1, 1200),
(19, 9, 1, 35000),
(20, 26, 2, 800),
(20, 27, 1, 2200),
(2, 4, 1, 5000),
(5, 10, 3, 1500),
(7, 8, 2, 1500),
(14, 24, 1, 2500),
(18, 23, 1, 1500),
(1, 22, 1, 4500),
(9, 2, 1, 55000),
(11, 3, 2, 4500),
(3, 28, 1, 2800),
(6, 29, 1, 5500),
(12, 30, 1, 2200),
(13, 14, 1, 2500),
(17, 11, 1, 800),
(19, 1, 1, 79999),
(8, 5, 1, 1200),
(10, 26, 1, 800),
(16, 6, 1, 650);

select * from users;
select * from order_items;
select * from orders;
select * from products;
select * from categories;