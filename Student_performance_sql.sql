use student_data;

-- 1.Find average score of all students.
SELECT AVG((MathScore + ReadingScore + WritingScore)/3.0) AS avg_score
FROM Cleaned_Student_Data;

-- 2. Count students by gender. 
SELECT Gender, COUNT(*) AS total_students
FROM Cleaned_Student_Data
GROUP BY Gender;

-- 3.Average score by Parent Education. 
SELECT ParentEduc,
       AVG((MathScore + ReadingScore + WritingScore)/3.0) AS avg_score
FROM Cleaned_Student_Data
GROUP BY ParentEduc
ORDER BY avg_score DESC;

-- 4. Students who scored above average in Math.
SELECT *
FROM Cleaned_Student_Data
WHERE MathScore > (
    SELECT AVG(MathScore) FROM Cleaned_Student_Data
);

-- 5. Top 5 students based on total score.
SELECT *,
       (MathScore + ReadingScore + WritingScore) AS TotalScore
FROM Cleaned_Student_Data
ORDER BY TotalScore DESC
LIMIT 5;

-- 6 Students scoring above their parent group average.
WITH parent_avg AS (
    SELECT ParentEduc,
           AVG(MathScore) AS avg_score
    FROM Cleaned_Student_Data
    GROUP BY ParentEduc
)
SELECT s.*
FROM Cleaned_Student_Data s
JOIN parent_avg p
ON s.ParentEduc = p.ParentEduc
WHERE s.MathScore > p.avg_score;

-- 7. Top student in each Parent Education group.
SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY ParentEduc ORDER BY MathScore DESC) AS rn
    FROM Cleaned_Student_Data
) t
WHERE rn = 1;

