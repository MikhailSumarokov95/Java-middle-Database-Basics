INSERT INTO student18.tb_album (name, year) VALUES ('Toxicity', 2001);
INSERT INTO student18.tb_album (name, year) VALUES ('Iowa', 2003);

INSERT INTO student18.tb_genre (name) VALUES ('Rock');
INSERT INTO student18.tb_genre (name) VALUES ('Metall');

INSERT INTO student18.tb_performer (name) VALUES ('Slipknot');
INSERT INTO student18.tb_performer (name) VALUES ('System of a Down');

INSERT INTO student18.tb_track (name, year, duration, number_plays, album_id)
VALUES
	('Chop Suey!', 2001, 210, 100000, (SELECT id FROM tb_album WHERE name LIKE 'Toxicity')),
	('Lonely Day', 2006, 167, 300000, (SELECT id FROM tb_album WHERE name LIKE 'Toxicity')),
	('Left Behind', 2001, 241, 500000, (SELECT id FROM tb_album WHERE name LIKE 'Iowa'));

INSERT INTO student18.tb_track_to_genre (track_id, genre_id)
VALUES
	((SELECT id FROM tb_track WHERE name LIKE 'Chop Suey!'), (SELECT id FROM tb_genre WHERE name LIKE 'Rock')),
	((SELECT id FROM tb_track WHERE name LIKE 'Lonely Day'), (SELECT id FROM tb_genre WHERE name LIKE 'Rock')),
	((SELECT id FROM tb_track WHERE name LIKE 'Left Behind'), (SELECT id FROM tb_genre WHERE name LIKE 'Metall'));

INSERT INTO student18.tb_track_to_performer (track_id, performer_id)
VALUES
	((SELECT id FROM tb_track WHERE name LIKE 'Chop Suey!'), (SELECT id FROM tb_performer WHERE name LIKE 'System of a Down')),
	((SELECT id FROM tb_track WHERE name LIKE 'Lonely Day'), (SELECT id FROM tb_performer WHERE name LIKE 'System of a Down')),
	((SELECT id FROM tb_track WHERE name LIKE 'Left Behind'), (SELECT id FROM tb_performer WHERE name LIKE 'Slipknot'));