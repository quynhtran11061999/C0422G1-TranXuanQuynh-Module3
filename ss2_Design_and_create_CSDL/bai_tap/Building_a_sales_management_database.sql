drop database if exists quan_ly_ban_hang;
create database quan_ly_ban_hang;
use quan_ly_ban_hang;

CREATE TABLE customer (
    c_id INT PRIMARY KEY,
    c_name VARCHAR(20)
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
    p_name VARCHAR(20),
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

