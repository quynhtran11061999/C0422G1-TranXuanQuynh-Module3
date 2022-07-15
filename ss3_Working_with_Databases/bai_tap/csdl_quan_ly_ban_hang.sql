drop database if exists csdl_quan_ly_ban_hang;
create database csdl_quan_ly_ban_hang;
use csdl_quan_ly_ban_hang;

CREATE TABLE customer (
    c_id INT PRIMARY KEY,
    c_name VARCHAR(25),
    c_age TINYINT
);

CREATE TABLE `order` (
    o_id INT PRIMARY KEY,
    c_id INT NOT NULL,
    o_date DATE,
    o_total_price INT,
    FOREIGN KEY (c_id)
        REFERENCES customer (c_id)
);

CREATE TABLE product (
    p_id INT PRIMARY KEY,
    p_name VARCHAR(25),
    p_price INT
);

CREATE TABLE order_detail (
    o_id INT NOT NULL,
    p_id INT NOT NULL,
    od_qty INT,
    PRIMARY KEY (o_id , p_id),
    FOREIGN KEY (o_id)
        REFERENCES `order` (o_id),
    FOREIGN KEY (p_id)
        REFERENCES product (p_id)
);

insert into customer(c_id, c_name, c_age) value 
(1,'Minh Quan',10),
(2,'Ngoc Oanh',20),
(3,'Hong Ha',50);

insert into `order` (o_id, c_id, o_date,o_total_price) value 
('1','1','2006/3/21',null),
('2','2','2006/3/23',null),
('3','1','2006/3/16',null);

insert into product (p_id, p_name, p_price) value
('1', 'May Giat', '3'),
('2', 'Tu Lanh', '5'),
('3', 'Dieu Hoa', '7'),
('4', 'Quat', '1'),
('5', 'Bep Dien', '2');

insert into order_detail (o_id, p_id, od_qty) value
('1', '1', '3'),
('1', '3', '7'),
('1', '4', '2'),
('2', '1', '1'),
('3', '1', '8'),
('2', '5', '4'),
('2', '3', '3');

SELECT 
    o_id, o_date, o_total_price
FROM
    `order`;

SELECT 
    c.c_name, p.p_name
FROM
    customer c
        JOIN
    `order` o ON c.c_id = o.c_id
        JOIN
    order_detail od ON o.o_id = od.o_id
        JOIN
    product p ON p.p_id = od.p_id;

SELECT 
    c.c_name
FROM
    customer c
        LEFT JOIN
    `order` o ON c.c_id = o.c_id
WHERE
    o.o_id IS NULL;

SELECT 
    o.o_id, o.o_date, SUM(od.od_qty * p.p_price) AS sum
FROM
    `order` o
        JOIN
    order_detail od ON o.o_id = od.o_id
        JOIN
    product p ON od.p_id = p.p_id
GROUP BY o_id; 