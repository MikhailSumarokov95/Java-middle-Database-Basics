SELECT SUM(t.number_plays) AS number_plays
FROM tb_track t
JOIN tb_track_to_genre tg ON tg.track_id = t.id
JOIN tb_genre g ON g.id = tg.genre_id
GROUP BY g.id
ORDER BY number_plays ASC