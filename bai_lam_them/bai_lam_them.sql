DROP DATABASE IF EXISTS internship;
CREATE DATABASE internship;

USE internship;

-- KHOA
CREATE TABLE faculty (
    faculty_id CHAR(10) PRIMARY KEY, 
    faculty_name CHAR(30),
    phone CHAR(10)
);

-- GIANG VIEN
CREATE TABLE instructor (
    instructor_id INT PRIMARY KEY,
    instructor_name CHAR(30),
    salary DECIMAL(5, 2),
    faculty_id CHAR(10),
    FOREIGN KEY (faculty_id) REFERENCES faculty (faculty_id)
);

-- SINH VIEN
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name CHAR(40),
    faculty_id CHAR(10),
    date_of_birth INT,
    place_of_birth CHAR(30),
    FOREIGN KEY (faculty_id) REFERENCES faculty (faculty_id)
);

-- DE TAI
CREATE TABLE project (
    project_id CHAR(10) PRIMARY KEY,
    project_name CHAR(30),
    expense INT,
    place_of_intern CHAR(30)
);

-- HUONG DAN THUC TAP
CREATE TABLE instructor_student (
    student_id INT PRIMARY KEY,
    project_id CHAR(10),
    instructor_id INT,
    grade DECIMAL(5, 2),
    FOREIGN KEY (student_id) REFERENCES student (student_id),
    FOREIGN KEY (project_id) REFERENCES project (project_id),
    FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id)
);

INSERT INTO faculty VALUES
('Geo', 'Dia ly va QLTN', 3855413), 
('Math', 'Toan', 3855411), 
('Bio', 'Cong nghe Sinh hoc', 3855412);

INSERT INTO instructor VALUES
(11, 'Thanh Binh', 700, 'Geo'),     
(12, 'Thu Huong', 500, 'Math'), 
(13, 'Chu Vinh', 650, 'Geo'), 
(14, 'Le Thi Ly', 500, 'Bio'), 
(15, 'Tran Son', 900, 'Math');

INSERT INTO student VALUES
(1, 'Le Van Son', 'Bio', 1990, 'Nghe An'), 
(2, 'Nguyen Thi Mai', 'Geo', 1990, 'Thanh Hoa'), 
(3, 'Bui Xuan Duc', 'Math', 1992, 'Ha Noi'), 
(4, 'Nguyen Van Tung', 'Bio', null, 'Ha Tinh'), 
(5, 'Le Khanh Linh', 'Bio', 1989, 'Ha Nam'), 
(6, 'Tran Khac Trong', 'Geo', 1991, 'Thanh Hoa'), 
(7, 'Le Thi Van', 'Math', null, 'null'), 
(8, 'Hoang Van Duc', 'Bio', 1992, 'Nghe An');

INSERT INTO project VALUES
('PRJ01', 'GIS', 100, 'Nghe An'), 
('PRJ02', 'ARC GIS', 500, 'Nam Dinh'), 
('PRJ03', 'Spatial DB', 100,  'Ha Tinh'), 
('PRJ04', 'MAP', 300, 'Quang Binh' );

INSERT INTO instructor_student VALUES
(1, 'PRJ01', 13, 8), 
(2, 'PRJ03', 14, 0), 
(3, 'PRJ03', 12, 10), 
(5, 'PRJ04', 14, 7), 
(6, 'PRJ01', 13, null), 
(7, 'PRJ04', 11, 10), 
(8, 'PRJ03', 15, 6);

-- Phan 1
-- cau 1 Đưa ra thông tin gồm mã số, họ tên và tên khoa của tất cả các giảng viên
SELECT 
    i.instructor_id, i.instructor_name, faculty_name
FROM
    instructor i
        JOIN
    faculty f ON i.faculty_id = f.faculty_id;

-- cau 2 Đưa ra thông tin gồm mã số, họ tên và tên khoa của các giảng viên của khoa ‘DIA LY va QLTN’
SELECT 
    i.instructor_id, i.instructor_name, faculty_name
FROM
    instructor i
        JOIN
    faculty f ON i.faculty_id = f.faculty_id
WHERE
    f.faculty_name = 'Dia ly va QLTN';

-- cau 3 Cho biết số sinh viên của khoa ‘CONG NGHE SINH HOC’
SELECT 
    COUNT(student_id) AS so_luong
FROM
    faculty f
        JOIN
    student s ON f.faculty_id = s.faculty_id
WHERE
    f.faculty_name = 'Cong nghe Sinh hoc';

-- cau 4 Đưa ra danh sách gồm mã số, họ tên và tuổi của các sinh viên khoa ‘TOAN’
SELECT 
    s.student_id, s.student_name, s.date_of_birth
FROM
    student s
        JOIN
    faculty f ON s.faculty_id = f.faculty_id
WHERE
    f.faculty_name = 'Toan';

-- cau 5 Cho biết số giảng viên của khoa ‘CONG NGHE SINH HOC’
SELECT 
    COUNT(instructor_id) AS so_luong
FROM
    faculty f
        JOIN
    instructor i ON i.faculty_id = f.faculty_id
WHERE
    f.faculty_name = 'Cong nghe Sinh hoc';

-- cau 6 Cho biết thông tin về sinh viên không tham gia thực tập

-- cach 1
SELECT 
    *
FROM
    student s
WHERE
    s.student_id NOT IN (SELECT 
            instructor_student.student_id
        FROM
            instructor_student);

-- cach 2 
SELECT 
    *
FROM
    student s
        LEFT JOIN
    instructor_student ins ON s.student_id = ins.student_id
WHERE
    ins.student_id IS NULL;

-- cau 7 Đưa ra mã khoa, tên khoa và số giảng viên của mỗi khoa
SELECT 
    f.faculty_id,
    f.faculty_name,
    COUNT(i.instructor_id) AS so_luong
FROM
    faculty f
        JOIN
    instructor i ON f.faculty_id = i.faculty_id
GROUP BY faculty_id;

-- cau 8 Cho biết số điện thoại của khoa mà sinh viên có tên ‘Le van son’ đang theo học	
SELECT 
    f.phone
FROM
    faculty f
        JOIN
    student s ON f.faculty_id = s.faculty_id
WHERE
    s.student_name = 'Le Van Son';

-- Phan 2
-- cau 1.	Cho biết mã số và tên của các đề tài do giảng viên ‘Tran son’ hướng dẫn
SELECT 
    i.instructor_name, p.project_id, p.project_name
FROM
    instructor i
        JOIN
    instructor_student ins ON i.instructor_id = ins.instructor_id
        JOIN
    project p ON ins.project_id = p.project_id
WHERE
    instructor_name = 'Tran Son';

-- cau 2 Cho biết tên đề tài không có sinh viên nào thực tập
select 
p.project_name
from project p left join instructor_student ins on p.project_id = ins.project_id
where ins.student_id is null;

-- cau 3 Cho biết mã số, họ tên, tên khoa của các giảng viên hướng dẫn từ 3 sinh viên trở lên.
SELECT 
    i.instructor_id,
    i.instructor_name,
    f.faculty_name,
    COUNT(ins.instructor_id) AS dem
FROM
    instructor i
        JOIN
    instructor_student ins ON i.instructor_id = ins.instructor_id
        JOIN
    faculty f ON i.faculty_id = f.faculty_id
GROUP BY ins.instructor_id
HAVING dem >= 3;

-- cau 4 Cho biết mã số, tên đề tài của đề tài có kinh phí cao nhất
SELECT 
    p.project_id,
    p.project_name,
    MAX(p.expense) AS kinh_phi_cao_nhat
FROM
    project p
WHERE
    expense IN (SELECT 
            MAX(expense)
        FROM
            project);

-- cau 5 Cho biết mã số và tên các đề tài có nhiều hơn 2 sinh viên tham gia thực tập
SELECT 
    ins.project_id,
    p.project_name,
    COUNT(ins.student_id) AS so_luong
FROM
    instructor_student ins
        JOIN
    project p ON p.project_id = ins.project_id
GROUP BY ins.project_id
HAVING so_luong > 2;

-- 6. Đưa ra mã số, họ tên và điểm của các sinh viên khoa ‘DIALY và QLTN’
SELECT 
    s.student_id,
    s.student_name
FROM
    student s
        JOIN
    faculty f ON s.faculty_id = f.faculty_id
WHERE
    f.faculty_name = 'Dia ly va QLTN';