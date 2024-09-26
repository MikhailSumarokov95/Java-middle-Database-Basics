INSERT INTO student18.tb_book (name, year, pages, downloads)
VALUES
	('Доктор Живаго', 1995, 660, 20300);

INSERT INTO student18.tb_author (name, country_id)
VALUES
    ('Борис Пастернак', (SELECT id FROM tb_country WHERE name LIKE 'Россия'));

INSERT INTO student18.tb_book_to_author (book_id, author_id)
VALUES
    ((SELECT id FROM tb_book WHERE name LIKE 'Доктор Живаго'), (SELECT id FROM tb_author WHERE name LIKE 'Борис Пастернак'));

SELECT g.name
FROM tb_genre g
JOIN tb_book_to_genre bg ON g.id = bg.book_id
GROUP BY g.name
HAVING COUNT(*) > 0;