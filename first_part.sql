-- Видалити базу даних MyDB, якщо вона існує
DROP DATABASE IF EXISTS MyDB;

-- Створити базу даних MyDB
CREATE DATABASE MyDB;

-- Використовувати базу даних MyDB
USE MyDB;

-- Створити таблицю employees
CREATE TABLE IF NOT EXISTS employees (
    id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(15),
    PRIMARY KEY (id)
);

-- Створити таблицю salaries
CREATE TABLE IF NOT EXISTS salaries (
    id INT AUTO_INCREMENT NOT NULL,
    employee_id INT,
    salary DECIMAL(10, 2),
    position VARCHAR(255),
    PRIMARY KEY (id),
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);

-- Створити таблицю personal_info
CREATE TABLE IF NOT EXISTS personal_info (
    id INT AUTO_INCREMENT NOT NULL,
    employee_id INT,
    marital_status VARCHAR(50),
    birth_date DATE,
    residence VARCHAR(255),
    PRIMARY KEY (id),
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);

INSERT INTO employees (name, phone) 
VALUES ('Саша', '+387294717524'),
       ('Маша', '+380675618493'),
       ('Андрій', '+380975168105');

-- Вставити дані в таблицю personal_info
INSERT INTO personal_info (employee_id, marital_status, birth_date, residence)
VALUES (1, 'Неодружений', '1990-01-01', 'Житомир'),
       (2, 'Одружений', '1969-03-10', 'Полтава'),
       (3, 'Неодружений', '2001-02-28', 'Київ');
       
INSERT INTO salaries (employee_id, salary, position)
VALUES (1, '12551.5', 'Лікар'),
       (2, '5709', 'Двірник'),
       (3, '65000', 'FULLSTACK DEVELOPER');

-- Змінити дані у третій таблиці про сімейне становище
UPDATE personal_info
SET marital_status = 'Одружений'
WHERE employee_id = 1;

SELECT employee_id
FROM salaries
WHERE salary > 10000;

-- Вибрати співробітників зі статусом "Одружений" з таблиці personal_info
SELECT employee_id
FROM personal_info
WHERE marital_status = 'Одружений';
