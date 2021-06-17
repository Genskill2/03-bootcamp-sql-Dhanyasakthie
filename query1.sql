SELECT title FROM books WHERE publisher=(SELECT id FROM publisher WHERE name='PHI');
