### SQL Joins Exercise

This module demonstrates understanding of `INNER`, `LEFT`, and `FULL OUTER JOIN` queries using Airbnb-style tables:

- Retrieve bookings and users
- Retrieve properties with/without reviews
- Retrieve all users and bookings, regardless of matches


### Subqueries Exercise

Includes:
- Non-correlated subquery: properties with average rating > 4.0
- Correlated subquery: users with more than 3 bookings


### Aggregations & Window Functions

Contains:
- `COUNT + GROUP BY` to count bookings per user  
- `RANK() OVER()` to rank properties by booking volume  

### Index Performance Improvement

Tested queries using `EXPLAIN ANALYZE`.

Key improvements:

- Lookup by user email became instant after `idx_users_email`
- Joins between bookings → users/properties improved significantly
- Property search by price/location became faster

Indexes created:
- `bookings.user_id`, `bookings.property_id`
- `properties.location`, `properties.price`
- `users.email`

Result: reduced query cost & execution time.


### Query Optimization Report

Original query joined 4 tables.  
We analyzed using `EXPLAIN ANALYZE`.

Issues:
- Full table scans on bookings & payments
- No index on payment.booking_id

Fixes:
- Added relevant indexes
- Verified `JOIN` fields indexed

Result:
- Significant drop in execution time  
- Index usage confirmed via query plan
