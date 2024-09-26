SELECT a.name, SUM(b.downloads)
FROM tb_book b
JOIN tb_book_to_author ba ON b.id = ba.book_id
JOIN tb_author a ON a.id = ba.author_id
GROUP BY a.name