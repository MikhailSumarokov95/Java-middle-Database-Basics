SELECT SUM(b.downloads)
FROM tb_book b
JOIN tb_book_to_genre bg ON b.id = bg.book_id
JOIN tb_genre g ON g.id = bg.genre_id
WHERE g.name LIKE 'Исторический роман'