SELECT books.title, publisher.name FROM publisher
INNER JOIN books
ON books.publisher=publisher.id
WHERE publisher.country='UK';
