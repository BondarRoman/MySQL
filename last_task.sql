


-- Використовуючи MySQL Workbench, створити порожню базу даних автомобілів. 
-- Заповнити таблицю даними (id(Autoincrement), марка, модель, об'єм двигуна, ціна, макс. швидкість).


DROP DATABASE IF EXISTS cars;

CREATE DATABASE cars;

USE cars;

CREATE TABLE IF NOT EXISTS data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    brand VARCHAR(25),
    model VARCHAR(30),
    engine_capacity DECIMAL(4,2),
    price INT,
    max_speed INT
);

INSERT INTO data (brand, model, engine_capacity, price, max_speed)
VALUES
    ('Toyota', 'Camry', 2.5, 30000, 180),
    ('Honda', 'Civic', 1.8, 22000, 200),
    ('Ford', 'Mustang', 5.0, 45000, 250),
    ('Chevrolet', 'Malibu', 2.0, 28000, 190),
    ('BMW', 'X5', 3.0, 60000, 220);
-- SELECT * FROM data;

