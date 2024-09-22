SELECT p.name
FROM tb_track t
JOIN tb_track_to_genre tg ON tg.track_id = t.id
JOIN tb_genre g ON g.id = tg.genre_id
JOIN tb_track_to_performer tp ON tp.track_id = t.id
JOIN tb_performer p ON p.id = tp.performer_id
GROUP BY p.name, g.name
HAVING g.name LIKE 'Rock' AND AVG(t.number_plays) > 150000