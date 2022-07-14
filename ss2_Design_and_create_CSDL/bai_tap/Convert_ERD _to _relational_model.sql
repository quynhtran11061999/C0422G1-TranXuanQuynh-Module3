drop database if exists xuat_nhap_hang;
create database xuat_nhap_hang;
use xuat_nhap_hang;

CREATE TABLE phieu_xuat (
    so_px INT PRIMARY KEY,
    ngay_xuat DATE
);

CREATE TABLE vat_tu (
    ma_vtu INT PRIMARY KEY,
    ten_vtu VARCHAR(40)
);

CREATE TABLE phieu_nhap (
    so_pn INT PRIMARY KEY,
    ngay_nhap DATE
);

CREATE TABLE don_dh (
    so_dh INT PRIMARY KEY,
    ngay_dh DATE
);

CREATE TABLE nha_cc (
    ma_nha_cc INT PRIMARY KEY,
    ten_nha_cc VARCHAR(50),
    dia_chi VARCHAR(50)
);

CREATE TABLE so_dien_thoai (
    sdt VARCHAR(20) PRIMARY KEY,
    ma_nha_cc INT,
    FOREIGN KEY (ma_nha_cc)
        REFERENCES nha_cc (ma_nha_cc)
);

CREATE TABLE chi_tiet_phieu_suat (
    dg_xuat INT,
    sl_xuat INT,
    so_px INT,
    ma_vtu INT,
    PRIMARY KEY (so_px , ma_vtu),
    FOREIGN KEY (so_px)
        REFERENCES phieu_xuat (so_px),
    FOREIGN KEY (ma_vtu)
        REFERENCES vat_tu (ma_vtu)
);

CREATE TABLE chi_tiet_phieu_nhap (
    dg_nhap INT,
    sl_nhap INT,
    ma_vtu INT,
    so_pn INT,
    PRIMARY KEY (ma_vtu , so_pn),
    FOREIGN KEY (ma_vtu)
        REFERENCES vat_tu (ma_vtu),
    FOREIGN KEY (so_pn)
        REFERENCES phieu_nhap (so_pn)
);

CREATE TABLE chi_tiet_don_dat_hang (
    ma_vtu INT,
    so_dh INT,
    PRIMARY KEY (ma_vtu , so_dh),
    FOREIGN KEY (ma_vtu)
        REFERENCES vat_tu (ma_vtu),
    FOREIGN KEY (so_dh)
        REFERENCES don_dh (so_dh)
);

CREATE TABLE cung_cap (
    so_dh INT,
    ma_nha_cc INT,
    PRIMARY KEY (so_dh , ma_nha_cc),
    FOREIGN KEY (so_dh)
        REFERENCES don_dh (so_dh),
    FOREIGN KEY (ma_nha_cc)
        REFERENCES nha_cc (ma_nha_cc)
);