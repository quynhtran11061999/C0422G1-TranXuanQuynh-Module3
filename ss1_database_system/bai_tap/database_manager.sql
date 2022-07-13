create database bai_tap;
use bai_tap;
create table class(
id_class int auto_increment,
name_class varchar(55),
primary key (id_class)
);
create table teacher(
id_teacher int auto_increment,
name_teacher varchar(55),
age_teacher int,
country_teacher varchar(55),
primary key (id_teacher)
); 
insert into class(name_class) value("C0422G1");
insert into teacher(name_teacher,age_teacher,country_teacher) value ("Quynhdeptrai",23,"VietNam");