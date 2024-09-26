INSERT INTO student18.tb_genre (name) VALUES ('Pop');
INSERT INTO student18.tb_genre (name) VALUES ('Electronic');
INSERT INTO student18.tb_genre (name) VALUES ('Techno');
INSERT INTO student18.tb_genre (name) VALUES ('Ambient techno');
INSERT INTO student18.tb_genre (name) VALUES ('Contemporary R&B');

SELECT *
FROM tb_track t
INNER JOIN tb_track_to_performer tp ON tp.track_id = t.id
INNER JOIN tb_performer p ON p.id = tp.performer_id;

SELECT *
FROM tb_track t
LEFT OUTER JOIN tb_track_to_performer tp ON tp.track_id = t.id
LEFT OUTER JOIN tb_performer p ON p.id = tp.performer_id;

SELECT *
FROM tb_track t
RIGHT OUTER JOIN tb_track_to_performer tp ON tp.track_id = t.id
RIGHT OUTER JOIN tb_performer p ON p.id = tp.performer_id;

SELECT *
FROM tb_track t
FULL JOIN tb_track_to_performer tp ON tp.track_id = t.id
FULL JOIN tb_performer p ON p.id = tp.performer_id;