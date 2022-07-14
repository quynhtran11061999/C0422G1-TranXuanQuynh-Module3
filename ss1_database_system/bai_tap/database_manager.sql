drop database if exists bai_tap;
create database bai_tap;
use bai_tap;

CREATE TABLE class (
    id_class INT AUTO_INCREMENT,
    name_class VARCHAR(55),
    PRIMARY KEY (id_class)
);

CREATE TABLE teacher (
    id_teacher INT AUTO_INCREMENT,
    name_teacher VARCHAR(55),
    age_teacher INT,
    country_teacher VARCHAR(55),
    PRIMARY KEY (id_teacher)
); 

insert into class(name_class) value("C0422G1");
insert into teacher(name_teacher,age_teacher,country_teacher) value ("Quynhdeptrai",23,"VietNam");