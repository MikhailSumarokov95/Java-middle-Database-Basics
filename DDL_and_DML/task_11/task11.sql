SELECT p.name, COUNT(t.*) AS number_track
FROM tb_track t
JOIN tb_track_to_performer tp ON tp.track_id = t.id
JOIN tb_performer p ON p.id = tp.performer_id
GROUP BY p.name