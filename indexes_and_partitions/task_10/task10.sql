INSERT INTO student18.tb_genre (name)
VALUES
	('Детектив'),
	('Фэнтези'),
	('Биография');

SELECT *
FROM tb_book b
INNER JOIN tb_book_to_author ba ON b.id = ba.book_id
INNER JOIN tb_author a ON a.id = ba.author_id;

SELECT *
FROM tb_book b
LEFT OUTER JOIN tb_book_to_author ba ON b.id = ba.book_id
LEFT OUTER JOIN tb_author a ON a.id = ba.author_id;

SELECT *
FROM tb_book b
RIGHT OUTER JOIN tb_book_to_author ba ON b.id = ba.book_id
RIGHT OUTER JOIN tb_author a ON a.id = ba.author_id;

SELECT *
FROM tb_book b
FULL JOIN tb_book_to_author ba ON b.id = ba.book_id
FULL JOIN tb_author a ON a.id = ba.author_id;