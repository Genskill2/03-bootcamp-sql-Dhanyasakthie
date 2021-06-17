DELETE FROM books_subjects
WHERE subject IN (
    SELECT books_subjects.subject FROM books_subjects
    INNER JOIN subjects 
    ON subjects.id=books_subjects.subject 
    WHERE subjects.name="History"
);


DELETE FROM subjects WHERE name='History';
