CREATE TABLE locations (
    location_id INT PRIMARY KEY,
    city VARCHAR(100),
    country VARCHAR(100)
);

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    location_id INT,
    FOREIGN KEY (location_id) REFERENCES locations(location_id)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(100)
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    user_id INT,
    product_id INT,
    sale_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO locations (location_id, city, country) VALUES
(1, 'Bangkok', 'Thailand'),
(2, 'Beijing', 'China'),
(3, 'Berlin', 'Germany'),
(4, 'Buenos Aires', 'Argentina'),
(5, 'Cape Town', 'South Africa'),
(6, 'Córdoba', 'Argentina'),
(7, 'Córdoba', 'Mexico'),
(8, 'Córdoba', 'Spain'),
(9, 'Dubai', 'UAE'),
(10, 'Istanbul', 'Turkey'),
(11, 'Lima', 'Peru'),
(12, 'London', 'UK'),
(13, 'Los Angeles', 'USA'),
(14, 'Madrid', 'Spain'),
(15, 'Mexico City', 'Mexico'),
(16, 'Moscow', 'Russia'),
(17, 'Mumbai', 'India'),
(18, 'New York', 'USA'),
(19, 'Paris', 'France'),
(20, 'Rome', 'Italy'),
(21, 'São Paulo', 'Brazil'),
(22, 'Seoul', 'South Korea'),
(23, 'Sydney', 'Australia'),
(24, 'Tokyo', 'Japan'),
(25, 'Toronto', 'Canada');

INSERT INTO users (user_id, name, location_id) VALUES
(1, 'Juan Perez', 6),         
(2, 'María Gómez', 6),        
(3, 'Carlos López', 7),       
(4, 'Fernanda García', 7),    
(5, 'Antonio Ruiz', 8),       
(6, 'Sofía Martínez', 8),     
(7, 'Lucía Fernández', 4),    
(8, 'Pedro Martinez', 14),    
(9, 'Marta Rodríguez', 15),   
(10, 'Emily Johnson', 18),    
(11, 'Michael Brown', 12),    
(12, 'Chloe Martin', 19),    
(13, 'Li Wei', 2),            
(14, 'Yuki Tanaka', 24),      
(15, 'Olivia Wilson', 23),    
(16, 'Ethan Lee', 25),        
(17, 'Hannah Fischer', 3),    
(18, 'Marco Rossi', 20),     
(19, 'Mateus Silva', 21),     
(20, 'Sofia Ramirez', 11),    
(21, 'Ivan Petrov', 16),      
(22, 'Zayed Al Nahyan', 9), 
(23, 'Liam McGregor', 5),     
(24, 'Ahmet Yilmaz', 10),     
(25, 'Priya Patel', 17);      

INSERT INTO sales (sale_id, user_id, product_id, sale_date, amount) VALUES
(1, 1, 1, '2024-01-15', 299.99),
(2, 2, 2, '2024-01-18', 799.99),
(3, 3, 3, '2024-01-20', 149.99),
(4, 1, 4, '2024-02-10', 199.99),
(5, 2, 5, '2024-02-15', 399.99),
(6, 3, 6, '2024-02-20', 599.99),
(7, 4, 1, '2024-01-22', 299.99),
(8, 5, 2, '2024-01-25', 799.99),
(9, 6, 3, '2024-01-28', 149.99),
(10, 7, 4, '2024-02-01', 199.99),
(11, 8, 5, '2024-02-05', 399.99),
(12, 9, 6, '2024-02-08', 599.99),
(13, 10, 7, '2024-02-12', 999.99),
(14, 11, 8, '2024-02-16', 499.99),
(15, 12, 9, '2024-02-20', 149.99),
(16, 13, 10, '2024-02-25', 299.99),
(17, 14, 1, '2024-03-01', 299.99),
(18, 15, 2, '2024-03-05', 799.99),
(19, 16, 3, '2024-03-10', 149.99),
(20, 17, 4, '2024-03-15', 199.99),
(21, 18, 5, '2024-03-20', 399.99),
(22, 19, 6, '2024-03-25', 599.99),
(23, 20, 7, '2024-03-30', 999.99),
(24, 21, 8, '2024-04-05', 499.99),
(25, 22, 9, '2024-04-10', 149.99);

INSERT INTO products (product_id, product_name, category) VALUES
(1, 'Smartphone', 'Electronics'),
(2, 'Laptop', 'Electronics'),
(3, 'Headphones', 'Accessories'),
(4, 'Smartwatch', 'Wearables'),
(5, 'Tablet', 'Electronics'),
(6, 'Camera', 'Photography'),
(7, 'TV', 'Electronics'),
(8, 'Game Console', 'Entertainment'),
(9, 'Bluetooth Speaker', 'Accessories'),
(10, 'E-reader', 'Electronics');