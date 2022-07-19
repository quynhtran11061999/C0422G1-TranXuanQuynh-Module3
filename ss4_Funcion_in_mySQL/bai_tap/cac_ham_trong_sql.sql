use quan_ly_sinh_vien;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
SELECT 
    *
FROM
    `subject`
WHERE
    credit = (SELECT 
            MAX(Credit)
        FROM
            subject);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
SELECT 
    *
FROM
    mark
WHERE
    Mark = (SELECT 
            MAX(Mark)
        FROM
            mark);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
SELECT 
    s.StudentId,
    s.StudentName,
    s.Address,
    s.Phone,
    s.Status,
    s.ClassId,
    AVG(Mark) AS AvgMark
FROM
    student s
        LEFT JOIN
    mark m ON s.StudentId = m.StudentId
GROUP BY s.StudentId
ORDER BY s.StudentId , s.StudentName DESC;