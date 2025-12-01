/* 16. List all orders with user names. */
select
    o.order_id,
    u.name,
    o.order_date,
    o.total_amount
from
    orders as o
    LEFT JOIN users u ON o.user_id = u.user_id;

/* 17. Show order items with product name + price. */
select
    o.order_item_id,
    o.order_id,
    p.name,
    p.price,
    o.quantity,
    o.item_price
from
    order_items as o
    left join products as p on o.product_id = p.product_id;

/* 18. Find total price per order (sum qty × item_price). */
SELECT
    order_id,
    SUM(quantity * item_price) AS total_price
FROM
    order_items
GROUP BY
    order_id
ORDER BY
    total_price DESC;

/* 19. Show each product with its category name. */
select
    p.product_id,
    p.name,
    p.price,
    c.name,
    p.stock
from
    products as p
    left join categories as c on p.category_id = c.category_id;

/* 20. Find users who bought electronics. */
SELECT DISTINCT
    u.user_id,
    u.name,
    u.email,
    u.country
FROM
    users u
    JOIN orders o ON u.user_id = o.user_id
    JOIN order_items oi ON o.order_id = oi.order_id
    JOIN products p ON oi.product_id = p.product_id
    JOIN categories c ON p.category_id = c.category_id
WHERE
    c.name ILIKE '%electronics%';