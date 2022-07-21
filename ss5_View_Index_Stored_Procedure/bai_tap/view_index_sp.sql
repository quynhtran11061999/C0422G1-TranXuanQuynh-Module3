drop database if exists demo;
create database demo;
use demo;

CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_code VARCHAR(20),
    product_name VARCHAR(20),
    product_price DOUBLE,
    product_amount INT,
    product_description VARCHAR(50),
    product_status VARCHAR(20)
);

insert into products(product_code,product_name,product_price,product_amount,product_description,product_status) value 
('1','Sữa',5000,5,'không có mô tả','tốt'),
('2','Dầu gội',7000,7,'không có mô tả','tốt'),
('3','Mì tôm',3000,3,'không có mô tả','tốt'),
('4','Nước suối',10000,10,'không có mô tả','tốt');

-- Bước 3 --
-- Tạo Unique Index trên bảng Products 
-- (sử dụng cột productCode để tạo chỉ mục) --
create unique index i_product_code on products(product_code);


-- Tạo Composite Index trên bảng Products 
-- (sử dụng 2 cột productName và productPrice) --
create index i_product_name_price on products(product_name,product_price);

-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào--
explain select * from products where product_code = '3';
explain select * from products where product_name = 3000;

-- Bước 4 --
-- Tạo view lấy về các thông tin: productCode, productName,
-- productPrice, productStatus từ bảng products. --
create view v_products as
select p.product_code, p.product_name, p.product_price, p.product_status
from products p;
select * from v_products;

-- Tiến hành sửa đổi view --
update v_products
set product_name = 'Cà phê'
where product_code = '3';

-- Tiến hành xoá view -- 
drop view v_products;

-- Bước 5 -- 
-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product --
delimiter $$
create procedure all_products()
begin 
	select * from products;
end $$
delimiter ; 
call all_products();

-- Tạo store procedure thêm một sản phẩm mới --
delimiter $$
create procedure add_products(IN 
	p_code varchar(20),
	p_name varchar(20),
	p_price double,
	p_amount int,
	p_description varchar(50),
	p_status varchar(20))
begin 
	insert into products(product_code,product_name,product_price,product_amount,product_description,product_status) 
	value (p_code,p_name,p_price,p_amount,p_description,p_status);
end $$
delimiter ; 
call add_products ('6','Nước ngot',20000,20,'không có mô tả','tốt');

-- Tạo store procedure sửa thông tin sản phẩm theo id --
delimiter $$
create procedure update_products(IN id_update int,p_code varchar(20),p_name varchar(20),p_price double,p_amount int,p_description varchar(50),p_status varchar(20))
begin 
	update products
	set
    product_code = p_code,
    product_name = p_name,
    product_price = p_price, 
    product_amount = p_amount,
    product_description = p_description,
    product_status= p_status
	where id = id_update;
end $$
delimiter ;
call update_products(2,'8','Nước ga',30000,30,'không có mô tả','tốt'); 

-- Tạo store procedure xoá sản phẩm theo id --
delimiter $$
create procedure delete_products(IN id_delete int)
begin
	delete from products where id = id_delete;
end $$
delimiter ; 
call delete_products(3);