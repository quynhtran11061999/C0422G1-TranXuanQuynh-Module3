drop database if exists furama;
create database furama;
use furama;

CREATE TABLE vi_tri (
    ma_vi_tri INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ten_vi_tri VARCHAR(45)
);

CREATE TABLE trinh_do (
    ma_trinh_do INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ten_trinh_do VARCHAR(45)
);

CREATE TABLE bo_phan (
    ma_bo_phan INT PRIMARY KEY AUTO_INCREMENT,
    ten_bo_phan VARCHAR(45)
);

CREATE TABLE nhan_vien (
    ma_nhan_vien INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ho_ten VARCHAR(45) NOT NULL,
    ngay_sinh DATE NOT NULL,
    so_cmnd VARCHAR(45) NOT NULL,
    luong DOUBLE NOT NULL,
    so_dien_thoai VARCHAR(45) NOT NULL,
    email VARCHAR(45),
    dia_chi VARCHAR(45),
    ma_vi_tri INT NOT NULL,
    ma_trinh_do INT NOT NULL,
    ma_bo_phan INT NOT NULL
);

CREATE TABLE khach_hang (
    ma_khach_hang INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ma_loai_khach INT NOT NULL,
    ho_ten VARCHAR(45) NOT NULL,
    ngay_sinh DATE NOT NULL,
    gioi_tinh BIT(1) NOT NULL,
    so_cmnd VARCHAR(45),
    so_dien_thoai VARCHAR(45),
    email VARCHAR(45),
    dia_chi VARCHAR(45)
);

CREATE TABLE loai_khach (
    ma_loai_khach INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ten_loai_khach VARCHAR(45)
);

CREATE TABLE hop_dong (
    ma_hop_dong INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ngay_lam_hop_dong DATETIME NOT NULL,
    ngay_ket_thuc DATETIME NOT NULL,
    tien_dat_coc DOUBLE NOT NULL,
    ma_nhan_vien INT NOT NULL,
    ma_khach_hang INT NOT NULL,
    ma_dich_vu INT NOT NULL
);

CREATE TABLE dich_vu (
    ma_dich_vu INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ten_dich_vu VARCHAR(45),
    dien_tich INT,
    chi_phi_thue DOUBLE NOT NULL,
    so_nguoi_toi_da INT,
    ma_kieu_thue INT NOT NULL,
    ma_loai_dich_vu INT NOT NULL,
    tieu_chuan_phong VARCHAR(45),
    mo_ta_tien_nghi_khac VARCHAR(45),
    dien_tich_ho_boi DOUBLE,
    so_tang INT,
    dich_vu_mien_phi_di_kem TEXT
);

CREATE TABLE loai_dich_vu (
    ma_loai_dich_vu INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ten_loai_dich_vu VARCHAR(45)
);

CREATE TABLE kieu_thue (
    ma_kieu_thue INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ten_kieu_thue VARCHAR(45)
);

CREATE TABLE hop_dong_chi_tiet (
    ma_hop_dong_chi_tiet INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ma_hop_dong INT NOT NULL,
    ma_dich_vu_di_kem INT NOT NULL,
    so_luong INT NOT NULL
);

CREATE TABLE dich_vu_di_kem (
    ma_dich_vu_di_kem INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ten_dich_vu_di_kem VARCHAR(45),
    gia DOUBLE NOT NULL,
    don_vi VARCHAR(10),
    trang_thai VARCHAR(45)
);

alter table nhan_vien add foreign key (ma_vi_tri) references vi_tri(ma_vi_tri);
alter table nhan_vien add foreign key (ma_trinh_do) references trinh_do(ma_trinh_do);
alter table nhan_vien add foreign key (ma_bo_phan) references bo_phan(ma_bo_phan);
alter table khach_hang add foreign key (ma_loai_khach) references loai_khach(ma_loai_khach);
alter table hop_dong add foreign key (ma_nhan_vien) references nhan_vien(ma_nhan_vien);
alter table hop_dong add foreign key (ma_khach_hang) references khach_hang(ma_khach_hang);
alter table hop_dong add foreign key (ma_dich_vu) references dich_vu(ma_dich_vu);
alter table dich_vu add foreign key (ma_kieu_thue) references kieu_thue(ma_kieu_thue);
alter table dich_vu add foreign key (ma_loai_dich_vu) references loai_dich_vu(ma_loai_dich_vu);
alter table hop_dong_chi_tiet add foreign key (ma_hop_dong) references hop_dong(ma_hop_dong);
alter table hop_dong_chi_tiet add foreign key (ma_dich_vu_di_kem) references dich_vu_di_kem(ma_dich_vu_di_kem);

insert into vi_tri(ten_vi_tri) value ("Quản lí"),("Nhân viên");
insert into trinh_do(ten_trinh_do) value ("Trung Cấp"),("Cao Đẳng"),("Đại Học"),("Sau Đại Học");
insert into bo_phan(ten_bo_phan) value ("Sale-Marketing"),("Hành chính"),("Phục vụ"),("Quản lý");
insert into nhan_vien (ma_nhan_vien, ho_ten, ngay_sinh, so_cmnd, luong, so_dien_thoai, email, dia_chi, ma_vi_tri, ma_trinh_do, ma_bo_phan) VALUES 
 ('1', 'Nguyễn Văn An', '1970-11-07', '456231786', '10000000', '0901234121', 'annguyen@gmail.com', '295 Nguyễn Tất Thành, Đà Nẵng', '1', '3', '1'),
 ('2', 'Lê Văn Bình', '1997-04-09', '654231234', '7000000', '0934212314', 'binhlv@gmail.com', '22 Yên Bái, Đà Nẵng', '1', '2', '2'),
 ('3', 'Hồ Thị Yến', '1995-12-12', '999231723', '14000000', '0412352315', 'thiyen@gmail.com', 'K234/11 Điện Biên Phủ, Gia Lai', '1', '3', '2'),
 ('4', 'Võ Công Toản', '1980-04-04', '123231365', '17000000', '0374443232', 'toan0404@gmail.com', '77 Hoàng Diệu, Quảng Trị', '1', '4', '4'),
 ('5', 'Nguyễn Bỉnh Phát', '1999-12-09', '454363232', '6000000', '0902341231', 'phatphat@gmail.com', '43 Yên Bái, Đà Nẵng', '2', '1', '1'),
 ('6', 'Khúc Nguyễn An Nghi', '2000-11-08', '964542311', '7000000', '0978653213', 'annghi20@gmail.com', '294 Nguyễn Tất Thành, Đà Nẵng', '2', '2', '3'),
 ('7', 'Nguyễn Hữu Hà', '1993-01-01', '534323231', '8000000', '0941234553', 'nhh0101@gmail.com', '4 Nguyễn Chí Thanh, Huế', '2', '3', '2'),
 ('8', 'Nguyễn Hà Đông', '1989-09-03', '234414123', '9000000', '0642123111', 'donghanguyen@gmail.com', '111 Hùng Vương, Hà Nội', '2', '4', '4'),
 ('9', 'Tòng Hoang', '1982-09-03', '256781231', '6000000', '0245144444', 'hoangtong@gmail.com', '213 Hàm Nghi, Đà Nẵng', '2', '4', '4'),
 ('10', 'Nguyễn Công Đạo', '1994-01-08', '755434343', '8000000', '0988767111', 'nguyencongdao12@gmail.com', '6 Hoà Khánh, Đồng Nai', '2', '3', '2');
 insert into loai_khach(ten_loai_khach) value ("Diamond"),("Platinium"),("Gold"),("Silver"),("Member");
 insert into khach_hang(ma_khach_hang, ma_loai_khach, ho_ten, ngay_sinh, gioi_tinh, so_cmnd, so_dien_thoai, email, dia_chi) value 
 ('1', '5', 'Nguyễn Thị Hào', '1970-11-07', 0, '643431213', '0945423362', 'thihao07@gmail.com', '23 Nguyễn Hoàng, Đà Nẵng'),
 ('2', '3', 'Phạm Xuân Diệu', '1992-08-08', 1, '865342123', '0954333333', 'xuandieu92@gmail.com', 'K77/22 Thái Phiên, Quảng Trị'),
 ('3', '1', 'Trương Đình Nghệ', '1990-02-27', 1, '488645199', '0373213122', 'nghenhan2702@gmail.com', 'K323/12 Ông Ích Khiêm, Vinh'),
 ('4', '1', 'Dương Văn Quan', '1981-07-08', 1, '543432111', '0490039241', 'duongquan@gmail.com', 'K453/12 Lê Lợi, Đà Nẵng'),
 ('5', '4', 'Hoàng Trần Nhi Nhi', '1995-12-09', 0, '795453345', '0312345678', 'nhinhi123@gmail.com', '224 Lý Thái Tổ, Gia Lai'),
 ('6', '4', 'Tôn Nữ Mộc Châu', '2005-12-06', 0, '732434215', '0988888844', 'tonnuchau@gmail.com', '37 Yên Thế, Đà Nẵng'),
 ('7', '1', 'Nguyễn Mỹ Kim', '1984-04-08', 0, '856453123', '0912345698', 'kimcuong84@gmail.com', 'K123/45 Lê Lợi, Hồ Chí Minh'),
 ('8', '3', 'Nguyễn Thị Hào', '1999-04-08', 0, '965656433', '0763212345', 'haohao99@gmail.com', '55 Nguyễn Văn Linh, Kon Tum'),
 ('9', '1', 'Trần Đại Danh', '1994-07-01', 1, '432341235', '0643343433', 'danhhai99@gmail.com', '24 Lý Thường Kiệt, Quảng Ngãi'),
 ('10', '2', 'Nguyễn Tâm Đắc', '1989-07-01', 1, '344343432', '0987654321', 'dactam@gmail.com', '22 Ngô Quyền, Đà Nẵng');
  insert into kieu_thue(ten_kieu_thue) value ("year"),("month"),("day"),("hour");
  insert into loai_dich_vu(ten_loai_dich_vu) value ("Villa"),("House"),("Room");
  insert into dich_vu (ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, so_nguoi_toi_da, ma_kieu_thue, ma_loai_dich_vu, tieu_chuan_phong, mo_ta_tien_nghi_khac, dien_tich_ho_boi, so_tang, dich_vu_mien_phi_di_kem) value
 ('1', 'Villa Beach Front', '25000', '1000000', '10', '3', '1', 'vip', 'Có hồ bơi', '500', '4', NULL),
 ('2', 'House Princess 01', '14000', '5000000', '7', '2', '2', 'vip', 'Có thêm bếp nướng', NULL, '3', NULL),
 ('3', 'Room Twin 01', '5000', '1000000', '2', '4', '3', 'normal', 'Có tivi', NULL, NULL, '1 Xe máy, 1 Xe đạp'),
 ('4', 'Villa No Beach Front', '22000', '9000000', '8', '3', '1', 'normal', 'Có hồ bơi', '300', '3', NULL),
 ('5', 'House Princess 02', '10000', '4000000', '5', '3', '2', 'normal', 'Có thêm bếp nướng', NULL, '2', NULL),
 ('6', 'Room Twin 02', '3000', '900000', '2', '4', '3', 'normal', 'Có tivi', NULL, NULL, '1 Xe máy');
insert into dich_vu_di_kem (ma_dich_vu_di_kem, ten_dich_vu_di_kem, gia, don_vi, trang_thai) value
('1','Karaoke','10000','giờ','tiện nghi hiện tại'),
('2','Thuê xe máy','10000','chiếc','hỏng 1 xe'),
('3','Thuê xe đạp','20000','chiếc','tốt'),
('4','Buffet buổi sáng','15000','suất','đầy đủ đồ ăn tráng miệng'),
('5','Buffet buổi trưa','90000','suất','đầy đủ đồ ăn tráng miệng'),
('6','Buffet buổi tối','16000','suất','đầy đủ đồ ăn tráng miệng');
insert into hop_dong (ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, ma_nhan_vien, ma_khach_hang, ma_dich_vu) value
 ('1', '2020-12-08', '2020-12-08', '0', '3', '1', '3'),
 ('2', '2020-07-14', '2020-07-21', '200000', '7', '3', '1'),
 ('3', '2021-03-15', '2021-03-17', '50000', '3', '4', '2'),
 ('4', '2021-01-14', '2021-01-18', '100000', '7', '5', '5'),
 ('5', '2021-07-14', '2021-07-15', '0', '7', '2', '6'),
 ('6', '2021-06-01', '2021-06-03', '0', '7', '7', '6'),
 ('7', '2021-09-02', '2021-09-05', '100000', '7', '4', '4'),
 ('8', '2021-06-17', '2021-06-18', '150000', '3', '4', '1'),
 ('9', '2020-11-19', '2020-11-19', '0', '3', '4', '3'),
 ('10', '2021-04-12', '2021-04-14', '0', '10', '3', '5'),
 ('11', '2021-04-25', '2021-04-25', '0', '2', '2', '1'),
 ('12', '2021-05-25', '2021-05-27', '0', '7', '10', '1');
 insert into hop_dong_chi_tiet(ma_hop_dong_chi_tiet, ma_hop_dong, ma_dich_vu_di_kem, so_luong) value
('1', '2', '4', '5'),
('2', '2', '5', '8'),
('3', '2', '6', '15'),
('4', '3', '1', '1'),
('5', '3', '2', '11'),
('6', '1', '3', '1'),
('7', '1', '2', '2'),
('8', '12', '2', '2'); 

-- task 2
SELECT 
    *
FROM
    nhan_vien
WHERE
    (ho_ten REGEXP '^[HKT]')
        AND CHAR_LENGTH(ho_ten) <= 15; 

-- task 3
SELECT 
    *
FROM
    khach_hang
WHERE
    (dia_chi LIKE '%Đà Nẵng'
        OR dia_chi LIKE '%Quảng Trị')
        AND ((YEAR(NOW()) - YEAR(ngay_sinh)) > 18
        AND (YEAR(NOW()) - YEAR(ngay_sinh)) < 50);

-- task 4
SELECT 
    kh.ma_khach_hang, kh.ho_ten, COUNT(*) AS so_lan_dat_phong
FROM
    loai_khach lk
        JOIN
    khach_hang kh ON lk.ma_loai_khach = kh.ma_loai_khach
        JOIN
    hop_dong hd ON hd.ma_khach_hang = kh.ma_khach_hang
WHERE
    lk.ma_loai_khach = 1
GROUP BY hd.ma_khach_hang
ORDER BY so_lan_dat_phong;

-- task 5
SELECT 
    kh.ma_khach_hang,
    kh.ho_ten,
    lk.ten_loai_khach,
    hd.ma_hop_dong,
    dv.ten_dich_vu,
    hd.ngay_lam_hop_dong,
    hd.ngay_ket_thuc,
    (dv.chi_phi_thue + IFNULL(hdct.so_luong * dvdk.gia, 0)) AS tong_tien
FROM
    khach_hang kh
        JOIN
    loai_khach lk ON lk.ma_loai_khach = kh.ma_loai_khach
        LEFT JOIN
    hop_dong hd ON hd.ma_khach_hang = kh.ma_khach_hang
        LEFT JOIN
    dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
        LEFT JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
GROUP BY kh.ma_khach_hang , hd.ma_hop_dong
ORDER BY kh.ma_khach_hang;	

-- task 6
SELECT 
    dv.ma_dich_vu,
    dv.ten_dich_vu,
    dv.dien_tich,
    dv.chi_phi_thue,
    hd.ngay_lam_hop_dong
FROM
    khach_hang kh
        JOIN
    hop_dong hd ON kh.ma_khach_hang = hd.ma_khach_hang
        JOIN
    dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
        JOIN
    loai_dich_vu ldv ON dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
WHERE
    dv.ma_dich_vu NOT IN (SELECT 
            hd.ma_dich_vu
        FROM
            hop_dong hd
        WHERE
            (hd.ngay_lam_hop_dong BETWEEN '2021-01-01' AND '2021-03-31')
                OR (hd.ngay_ket_thuc BETWEEN '2021-01-01' AND '2021-03-31'))
GROUP BY hd.ma_dich_vu;

-- task 7
SELECT 
    dv.ma_dich_vu,
    dv.ten_dich_vu,
    dv.dien_tich,
    dv.so_nguoi_toi_da,
    dv.chi_phi_thue,
    ldv.ten_loai_dich_vu
FROM
    dich_vu dv
        JOIN
    hop_dong hd ON dv.ma_dich_vu = hd.ma_dich_vu
        JOIN
    loai_dich_vu ldv ON dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
WHERE
    dv.ma_dich_vu IN (SELECT 
            hd.ma_dich_vu
        FROM
            hop_dong hd
        WHERE
            YEAR(hd.ngay_lam_hop_dong) = '2020'
                OR YEAR(ngay_ket_thuc) = '2020')
        AND dv.ma_dich_vu NOT IN (SELECT 
            hd.ma_dich_vu
        FROM
            hop_dong hd
        WHERE
            YEAR(hd.ngay_lam_hop_dong) = '2021'
                OR YEAR(ngay_ket_thuc) = '2021')
GROUP BY dv.ma_dich_vu;

-- task 8
SELECT DISTINCT
    ho_ten
FROM
    khach_hang;

-- task 9
SELECT 
    MONTH(hd.ngay_lam_hop_dong) AS thang,
    COUNT(MONTH(hd.ngay_lam_hop_dong)) AS so_luong_khach_hang
FROM
    hop_dong hd
WHERE
    YEAR(hd.ngay_lam_hop_dong) = '2021'
GROUP BY thang
ORDER BY thang;

-- task 10 
SELECT 
    hd.ma_hop_dong,
    hd.ngay_lam_hop_dong,
    hd.ngay_ket_thuc,
    hd.tien_dat_coc,
    SUM(hdct.so_luong) AS so_luong_dich_vu_di_kem
FROM
    hop_dong hd
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
GROUP BY hd.ma_hop_dong;

-- task 11
SELECT 
    dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem
FROM
    dich_vu_di_kem dvdk
        JOIN
    hop_dong_chi_tiet hdct ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
        JOIN
    hop_dong hd ON hdct.ma_hop_dong = hd.ma_hop_dong
        JOIN
    khach_hang kh ON hd.ma_khach_hang = kh.ma_khach_hang
        JOIN
    loai_khach lk ON kh.ma_loai_khach = lk.ma_loai_khach
WHERE
    lk.ten_loai_khach = 'Diamond'
        AND (dia_chi LIKE '%Vinh'
        OR dia_chi LIKE '%Quảng Ngãi');
        
-- task 12 Hiển thị thông tin ma_hop_dong, ho_ten (nhân viên), ho_ten (khách hàng), so_dien_thoai (khách hàng), 
-- ten_dich_vu, so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở dich_vu_di_kem), tien_dat_coc của 
-- tất cả các dịch vụ đã từng được khách hàng đặt vào 3 tháng cuối năm 2020 nhưng chưa từng được khách hàng đặt vào 6 tháng đầu năm 2021.
SELECT 
    hd.ma_hop_dong,
    nv.ho_ten,
    kh.ho_ten,
    kh.so_dien_thoai,
    dv.ten_dich_vu,
    SUM(hdct.so_luong) AS so_luong_dich_vu_di_kem,
    hd.tien_dat_coc
FROM
    hop_dong hd
        JOIN
    khach_hang kh ON hd.ma_khach_hang = kh.ma_khach_hang
        JOIN
    nhan_vien nv ON hd.ma_nhan_vien = nv.ma_nhan_vien
        JOIN
    dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
WHERE
    (YEAR(ngay_lam_hop_dong) = 2020
        AND MONTH(ngay_lam_hop_dong) IN (10 , 11, 12))
        AND hd.ma_hop_dong NOT IN (SELECT 
            ma_hop_dong
        FROM
            hop_dong
        WHERE
            YEAR(ngay_lam_hop_dong) = 2021
                AND MONTH(ngay_lam_hop_dong) BETWEEN 1 AND 6)
GROUP BY hd.ma_hop_dong;

-- task 13 Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng. 
-- (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau). --
SELECT 
    dvdk.ma_dich_vu_di_kem,
    dvdk.ten_dich_vu_di_kem,
    SUM(hdct.so_luong) AS so_luong_dich_vu_di_kem
FROM
    dich_vu_di_kem dvdk
        JOIN
    hop_dong_chi_tiet hdct ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
GROUP BY dvdk.ma_dich_vu_di_kem
HAVING so_luong_dich_vu_di_kem = (SELECT 
        SUM(so_luong)
    FROM
        hop_dong_chi_tiet
    GROUP BY ma_dich_vu_di_kem
    ORDER BY SUM(so_luong) DESC	
    LIMIT 1);
    
-- task 14.	Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất. 
-- Thông tin hiển thị bao gồm ma_hop_dong, ten_loai_dich_vu, ten_dich_vu_di_kem, so_lan_su_dung 
-- (được tính dựa trên việc count các ma_dich_vu_di_kem). --
SELECT 
    hd.ma_hop_dong,
    ldv.ten_loai_dich_vu,
    dvdk.ten_dich_vu_di_kem,
    COUNT(dvdk.ma_dich_vu_di_kem) AS so_lan_su_dung
FROM
    loai_dich_vu ldv
        JOIN
    dich_vu dv ON ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
        JOIN
    hop_dong hd ON dv.ma_dich_vu = hd.ma_dich_vu
        JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
        JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
GROUP BY hdct.ma_dich_vu_di_kem
HAVING so_lan_su_dung = 1
ORDER BY hd.ma_hop_dong;  

-- task 15.	Hiển thi thông tin của tất cả nhân viên bao gồm ma_nhan_vien, ho_ten, ten_trinh_do, 
-- ten_bo_phan, so_dien_thoai, dia_chi mới chỉ lập được tối đa 3 hợp đồng từ năm 2020 đến 2021. -- 
SELECT 
    nv.ma_nhan_vien,
    nv.ho_ten,
    td.ten_trinh_do,
    bp.ten_bo_phan,
    nv.so_dien_thoai,
    nv.dia_chi
FROM
    trinh_do td
        JOIN
    nhan_vien nv ON td.ma_trinh_do = nv.ma_trinh_do
        JOIN
    bo_phan bp ON nv.ma_bo_phan = bp.ma_bo_phan
        JOIN
    hop_dong hd ON nv.ma_nhan_vien = hd.ma_nhan_vien
WHERE
    YEAR(ngay_lam_hop_dong) IN (2020 , 2021)
GROUP BY hd.ma_nhan_vien
HAVING COUNT(hd.ma_nhan_vien) <= 3;

-- task 16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021. --
delete from nhan_vien nv
where ma_nhan_vien not in (
select ma_nhan_vien from hop_dong hd where year(ngay_lam_hop_dong) between 2019 and 2021);
		
-- task 17.	Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond, 
-- chỉ cập nhật những khách hàng đã từng đặt phòng với Tổng Tiền thanh toán trong năm 2021 là lớn hơn 10.000.000 VNĐ. --
UPDATE khach_hang kh 
SET 
    ma_khach_hang = 1
WHERE
    ma_khach_hang IN (SELECT 
            temp.ma_khach_hang
        FROM
            (SELECT 
                hd.ma_khach_hang,
                    (dv.chi_phi_thue + SUM(IFNULL(hdct.so_luong * dvdk.gia, 0))) AS tong_tien
            FROM
                khach_hang kh
            LEFT JOIN hop_dong hd ON kh.ma_khach_hang = hd.ma_khach_hang
            LEFT JOIN hop_dong_chi_tiet hdct ON hdct.ma_hop_dong = hd.ma_hop_dong
            LEFT JOIN dich_vu_di_kem dvdk ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
            LEFT JOIN dich_vu dv ON dv.ma_dich_vu = hd.ma_dich_vu
            LEFT JOIN loai_khach lk ON lk.ma_loai_khach = kh.ma_loai_khach
            GROUP BY hd.ma_hop_dong , kh.ma_khach_hang
            HAVING tong_tien > 10000000) temp);
            
-- task 18 Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng). --
set FOREIGN_KEY_CHECKS = 0;
DELETE FROM khach_hang 
WHERE
    ma_khach_hang IN (SELECT 
        ma_khach_hang
    FROM
        hop_dong hd
    
    WHERE
        YEAR(ngay_lam_hop_dong) < 2021);
set FOREIGN_KEY_CHECKS = 1;

-- task 19 Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi.
UPDATE dich_vu_di_kem 
SET 
    gia = gia * 2
WHERE
    ma_dich_vu_di_kem IN (SELECT 
            ma_dich_vu_di_kem
        FROM
            hop_dong_chi_tiet hdct
                JOIN
            hop_dong hd ON hdct.ma_hop_dong = hd.ma_hop_dong
        WHERE
            YEAR(hd.ngay_lam_hop_dong) = 2020
        GROUP BY hdct.ma_dich_vu_di_kem
        HAVING SUM(hdct.so_luong) > 10);
        
-- task 20 
SELECT 
    ma_nhan_vien AS id,
    ho_ten,
    email,
    so_dien_thoai,
    ngay_sinh,
    dia_chi
FROM
    nhan_vien 
UNION SELECT 
    ma_khach_hang AS id,
    ho_ten,
    email,
    so_dien_thoai,
    ngay_sinh,
    dia_chi
FROM
    khach_hang;
