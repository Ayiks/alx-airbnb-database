# Database Normalization

## 1️⃣ First Normal Form (1NF)
- Each table has a primary key (e.g., `user_id`, `property_id`).
- All attributes hold atomic values (no repeating groups or arrays).

## 2️⃣ Second Normal Form (2NF)
- All non-key attributes fully depend on their primary keys.
- Example: In `Property`, attributes like `name`, `location`, and `price_per_night` depend entirely on `property_id`.

## 3️⃣ Third Normal Form (3NF)
- No transitive dependencies.
- Example: User contact info (email, phone) depends only on `user_id`, not on role or booking.
- Each entity represents a single concept (User, Property, Booking, etc.).

✅ Result: The design meets **3NF**, ensuring data integrity and reducing redundancy.
# alx-airbnb-database
