INSERT INTO subjects (name)
VALUES ('Go'), ('Technology'), ('UNIX'), ('C'), ('Science Fiction'), ('Productivity'), ('Politics'), ('History'), ('Psychology');

INSERT INTO publisher (name, country)
VALUES ('PHI', 'India'),
('Harper', 'USA'), 
('GCP', 'USA'), 
('Avery', 'USA'), 
('Del Rey', 'UK'), 
('Vintage', 'UK');

INSERT INTO books (title, publisher)
VALUES ('The C Programming Language', (SELECT id FROM publisher where name='PHI')),
('The Go Programming Language', (SELECT id FROM publisher where name='PHI')),
('The UNIX Programming Environment', (SELECT id FROM publisher where name='PHI')),
('Cryptonomicon', (SELECT id FROM publisher where name='Harper')),
('Deep Work', (SELECT id FROM publisher where name='GCP')),
('Atomic Habits', (SELECT id FROM publisher where name='Avery')),
('The City and The City', (SELECT id FROM publisher where name='Del Rey')),
('The Great War for Civilisation', (SELECT id FROM publisher where name='Vintage'));

INSERT INTO books_subjects (book, subject)
VALUES ((SELECT id FROM subjects where name='The C Programming Language'), (SELECT id FROM subjects where name='C')),
((SELECT id FROM books where title='The C Programming Language'), (SELECT id FROM subjects where name='UNIX')),
((SELECT id FROM books where title='The C Programming Language'), (SELECT id FROM subjects where name='Technology')),
((SELECT id FROM books where title='The Go Programming Language'), (SELECT id FROM subjects where name='Go')),
((SELECT id FROM books where title='The Go Programming Language'), (SELECT id FROM subjects where name='Technology')),
((SELECT id FROM books where title='The UNIX Programming Environment'), (SELECT id FROM subjects where name='UNIX')),
((SELECT id FROM books where title='The UNIX Programming Environment'), (SELECT id FROM subjects where name='Technology')),
((SELECT id FROM books where title='Cryptonomicon'), (SELECT id FROM subjects where name='Technology')),
((SELECT id FROM books where title='Cryptonomicon'), (SELECT id FROM subjects where name='Science Fiction')),
((SELECT id FROM books where title='Deep Work'), (SELECT id FROM subjects where name='Technology')),
((SELECT id FROM books where title='Deep Work'), (SELECT id FROM subjects where name='Productivity')),
((SELECT id FROM books where title='Atomic Habits'), (SELECT id FROM subjects where name='Productivity')),
((SELECT id FROM books where title='Atomic Habits'), (SELECT id FROM subjects where name='Psychology')),
((SELECT id FROM books where title='The City and The City'), (SELECT id FROM subjects where name='Science Fiction')),
((SELECT id FROM books where title='The City and The City'), (SELECT id FROM subjects where name='Politics')),
((SELECT id FROM books where title='The Great War for Civilisation'), (SELECT id FROM subjects where name='Politics')),
((SELECT id FROM books where title='The Great War for Civilisation'), (SELECT id FROM subjects where name='History'));
