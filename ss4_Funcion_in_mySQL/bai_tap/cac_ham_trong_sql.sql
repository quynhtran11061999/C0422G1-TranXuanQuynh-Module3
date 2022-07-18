use quan_ly_sinh_vien;

SELECT 
    *
FROM
    `subject`
WHERE
    credit = (SELECT 
            MAX(Credit)
        FROM
            subject);

SELECT 
    *
FROM
    mark
WHERE
    Mark = (SELECT 
            MAX(Mark)
        FROM
            mark);

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