-- Step 1: Drop and recreate bookings table with partitioning by RANGE of year(start_date)
DROP TABLE IF EXISTS bookings;

CREATE TABLE bookings (
    id INT PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE,
    status VARCHAR(50)
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2020 VALUES LESS THAN (2021),
    PARTITION p2021 VALUES LESS THAN (2022),
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);

-- Step 2: Sample query before optimization (assumes non-partitioned)
-- SELECT * FROM bookings WHERE start_date BETWEEN '2023-01-01' AND '2023-12-31';

-- Step 3: Sample query on partitioned table
EXPLAIN SELECT * FROM bookings
WHERE start_date BETWEEN '2023-01-01' AND '2023-12-31';
