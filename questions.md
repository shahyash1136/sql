# SQL Practice Questions (60 Questions)

## Basic (15 Questions)
1. List all products.
2. Show users from India.
3. Find products priced above 10,000.
4. Get all categories.
5. Show orders placed after July 2024.
6. Show products with stock < 50.
7. Sort products by price descending.
8. Find the cheapest product.
9. Find most expensive product.
10. Count total users.
11. Count total orders.
12. Show distinct countries from users.
13. Show top 5 most expensive products.
14. Products whose name contains “Laptop”.
15. Show users whose email contains “gmail”.

## Joins (10 Questions)
16. List all orders with user names.
17. Show order items with product name + price.
18. Find total price per order (sum qty × item_price).
19. Show each product with its category name.
20. Find users who bought electronics.
21. Products that have never been ordered.
22. Users who placed more than 2 orders.
23. For each user show number of items purchased.
24. Order with maximum total items.
25. List all products purchased by users from India.

## Aggregations (10 Questions)
26. Total revenue.
27. Revenue per month.
28. Revenue per category.
29. Most sold product (by quantity).
30. Average order value.
31. Count orders per country.
32. Show category with least revenue.
33. Find top 3 revenue-generating users.
34. How many orders include more than 1 item?
35. Show total stock value (price × stock).

## Subqueries (10 Questions)
36. Products priced above avg price.
37. Users who never ordered.
38. Orders with total_amount above avg order amount.
39. Product with 2nd highest price.
40. Users who bought the most expensive product.
41. Categories with more than 3 products.
42. Products in top 10% price range.
43. Users who bought items > 10,000 in a single order.
44. Orders containing at least 3 items.
45. Customers who didn’t order in last 90 days.

## CTE + Window Functions (10 Questions)
46. ROW_NUMBER partition by category.
47. Rank products by price.
48. Dense rank of categories by revenue.
49. Running total of daily revenue.
50. Users with their latest order using ROW_NUMBER.
51. Show moving average of revenue (last 3 orders).
52. Top 2 most expensive products per category.
53. Monthly revenue growth (current month vs previous month).
54. CTE: high price (price > 50000) + electronics → intersection.
55. CTE: list orders and cumulative item count per user.

## Advanced + FAANG Level (5 Questions)
56. Recursive CTE: generate calendar for 2024.
57. Recursive CTE: find user → order → order items breakdown.
58. Detect duplicate user emails.
59. Find outliers using Z-score on order total_amount.
60. Optimize query: find orders > 50k and explain which index to create.