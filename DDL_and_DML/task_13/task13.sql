INSERT INTO student18.tb_track (name, year, duration, number_plays, album_id)
VALUES
	('Welcome', 2001, 210, 100000, (SELECT id FROM tb_album WHERE name LIKE 'Iowa'));

INSERT INTO student18.tb_track_to_performer (track_id, performer_id)
VALUES
((SELECT id FROM tb_track WHERE name LIKE 'Welcome'), (SELECT id FROM tb_performer WHERE name LIKE 'Slipknot'));

SELECT g.name
FROM tb_genre g
JOIN tb_track_to_genre tg ON g.id = tg.genre_id
GROUP BY g.name
HAVING COUNT(*) > 0;