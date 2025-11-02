-- Partition bookings by start_date (PostgreSQL)

CREATE TABLE bookings_partitioned (
    id SERIAL PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE
) PARTITION BY RANGE(start_date);

CREATE TABLE bookings_2024 PARTITION OF bookings_partitioned
FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

-- Example query on partitioned table
SELECT *
FROM bookings_partitioned
WHERE start_date BETWEEN '2024-05-01' AND '2024-05-31';
