CREATE TABLE IF NOT EXISTS student18.tb_performer();

ALTER TABLE IF EXISTS student18.tb_performer
    ADD COLUMN IF NOT EXISTS id                                     BIGSERIAL PRIMARY KEY,
    ADD COLUMN IF NOT EXISTS name                                   VARCHAR
;

COMMENT ON TABLE  student18.tb_performer                            IS 'Исполнитель трека';
COMMENT ON COLUMN student18.tb_performer.id                         IS 'Идентификатор исполнителя';
COMMENT ON COLUMN student18.tb_performer.name                       IS 'Имя исполнителя';

CREATE TABLE IF NOT EXISTS student18.tb_album();

ALTER TABLE IF EXISTS student18.tb_album
    ADD COLUMN IF NOT EXISTS id                                     BIGSERIAL PRIMARY KEY,
    ADD COLUMN IF NOT EXISTS name                                   VARCHAR,
    ADD COLUMN IF NOT EXISTS year                                   SMALLINT
;

COMMENT ON TABLE  student18.tb_album                                IS 'Альбом';
COMMENT ON COLUMN student18.tb_album.id                             IS 'Идентификатор альбома';
COMMENT ON COLUMN student18.tb_album.name                           IS 'Имя альбома';
COMMENT ON COLUMN student18.tb_album.year                           IS 'Год выпуска альбома';

CREATE TABLE IF NOT EXISTS student18.tb_genre();

ALTER TABLE IF EXISTS student18.tb_genre
    ADD COLUMN IF NOT EXISTS id                                     BIGSERIAL PRIMARY KEY,
    ADD COLUMN IF NOT EXISTS name                                   VARCHAR
;

COMMENT ON TABLE  student18.tb_genre                                IS 'Жанр';
COMMENT ON COLUMN student18.tb_genre.id                             IS 'Идентификатор жанра';
COMMENT ON COLUMN student18.tb_genre.name                           IS 'Имя жанра';

CREATE TABLE IF NOT EXISTS student18.tb_track();

ALTER TABLE IF EXISTS student18.tb_track
    ADD COLUMN IF NOT EXISTS id                                     BIGSERIAL PRIMARY KEY,
    ADD COLUMN IF NOT EXISTS name                                   VARCHAR,
    ADD COLUMN IF NOT EXISTS year                                   SMALLINT,
    ADD COLUMN IF NOT EXISTS duration                               SMALLINT,
    ADD COLUMN IF NOT EXISTS number_plays                           INT,
    ADD COLUMN IF NOT EXISTS album_id                               BIGSERIAL REFERENCES tb_album(id)
;

COMMENT ON TABLE  student18.tb_track                                IS 'Трек';
COMMENT ON COLUMN student18.tb_track.id                             IS 'Идентификатор трека';
COMMENT ON COLUMN student18.tb_track.name                           IS 'Имя трека';
COMMENT ON COLUMN student18.tb_track.year                           IS 'Год выпуска трека';
COMMENT ON COLUMN student18.tb_track.duration                       IS 'Продолжительность трека';
COMMENT ON COLUMN student18.tb_track.number_plays					IS 'Количество прослушиваний';
COMMENT ON COLUMN student18.tb_track.album_id                       IS 'Идентификатор альбома';

CREATE TABLE IF NOT EXISTS student18.tb_track_to_genre();

ALTER TABLE IF EXISTS student18.tb_track_to_genre
    ADD COLUMN IF NOT EXISTS track_id                               BIGSERIAL REFERENCES tb_track(id),
    ADD COLUMN IF NOT EXISTS genre_id                               BIGSERIAL REFERENCES tb_genre(id)
;

COMMENT ON TABLE  student18.tb_track_to_genre                       IS 'Соотношение трека с жанром';
COMMENT ON COLUMN student18.tb_track_to_genre.track_id              IS 'Идентификатор трека';
COMMENT ON COLUMN student18.tb_track_to_genre.genre_id              IS 'Идентификатор жанра';

CREATE TABLE IF NOT EXISTS student18.tb_track_to_performer();

ALTER TABLE IF EXISTS student18.tb_track_to_performer
    ADD COLUMN IF NOT EXISTS track_id                               BIGSERIAL REFERENCES tb_track(id),
    ADD COLUMN IF NOT EXISTS performer_id                           BIGSERIAL REFERENCES tb_performer(id)
;

COMMENT ON TABLE  student18.tb_track_to_performer                   IS 'Соотношение трека с исполнителем';
COMMENT ON COLUMN student18.tb_track_to_performer.track_id          IS 'Идентификатор трека';
COMMENT ON COLUMN student18.tb_track_to_performer.performer_id      IS 'Идентификатор исполнителя';