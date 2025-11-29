/* 1. List all products. */
select * from products;

/* 2. Show users from India. */
select * from users where country='India';

/* 3. Find products priced above 10,000. */
select * from products where price > 10000;

/* 4. Get all categories. */
select * from categories;

/* 5. Show orders placed after July 2024. */
select * from orders where order_date > '2024-07-31';

/* 6. Show products with stock < 50. */
select * from products where stock < 50;

/* 7. Sort products by price descending. */
select * from products order by price desc;

/* 8. Find the cheapest product. */
select * from products where price = (select min(price) from products);

/* 9. Find most expensive product. */
select * from products where price = (select max(price) from products);

/* 10. Count total users. */
select count(*) from users;

/* 11. Count total orders. */
select count(*) from orders;

/* 12. Show distinct countries from users. */
select distinct(country) from users;

/* 13. Show top 5 most expensive products. */
select * from products order by price desc limit 5;

/* 14. Products whose name contains “Laptop”. */
select * from products where name ILIKE '%Laptop%';

/* 15. Show users whose email contains “gmail”. */
select * from users where email ILIKE '%gmail%';