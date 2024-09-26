CREATE TABLE IF NOT EXISTS student18.tb_country();

ALTER TABLE IF EXISTS student18.tb_country
    ADD COLUMN IF NOT EXISTS id                             BIGSERIAL PRIMARY KEY,
    ADD COLUMN IF NOT EXISTS name                           VARCHAR
;

COMMENT ON TABLE  student18.tb_country                      IS 'Страна';
COMMENT ON COLUMN student18.tb_country.id                   IS 'Идентификатор страны';
COMMENT ON COLUMN student18.tb_country.name                 IS 'Название страны';


CREATE TABLE IF NOT EXISTS student18.tb_author();

ALTER TABLE IF EXISTS student18.tb_author
    ADD COLUMN IF NOT EXISTS id                             BIGSERIAL PRIMARY KEY,
    ADD COLUMN IF NOT EXISTS name                           VARCHAR,
    ADD COLUMN IF NOT EXISTS country_id                     BIGSERIAL REFERENCES tb_country(id)
;

COMMENT ON TABLE  student18.tb_author                       IS 'Автор';
COMMENT ON COLUMN student18.tb_author.id                    IS 'Идентификатор автора';
COMMENT ON COLUMN student18.tb_author.name                  IS 'Имя автора';
COMMENT ON COLUMN student18.tb_author.country_id            IS 'Идентификатор страны';

CREATE TABLE IF NOT EXISTS student18.tb_genre();

ALTER TABLE IF EXISTS student18.tb_genre
    ADD COLUMN IF NOT EXISTS id                             BIGSERIAL PRIMARY KEY,
    ADD COLUMN IF NOT EXISTS name                           VARCHAR
;

COMMENT ON TABLE  student18.tb_genre                        IS 'Жанр';
COMMENT ON COLUMN student18.tb_genre.id                     IS 'Идентификатор жанра';
COMMENT ON COLUMN student18.tb_genre.name                   IS 'Имя жанра';

CREATE TABLE IF NOT EXISTS student18.tb_book();

ALTER TABLE IF EXISTS student18.tb_book
    ADD COLUMN IF NOT EXISTS id                             BIGSERIAL PRIMARY KEY,
    ADD COLUMN IF NOT EXISTS name                           VARCHAR,
    ADD COLUMN IF NOT EXISTS year                           SMALLINT,
    ADD COLUMN IF NOT EXISTS pages                          SMALLINT,
    ADD COLUMN IF NOT EXISTS downloads                      SMALLINT
;

COMMENT ON TABLE  student18.tb_book                         IS 'Книга';
COMMENT ON COLUMN student18.tb_book.id                      IS 'Идентификатор книги';
COMMENT ON COLUMN student18.tb_book.name                    IS 'Имя книги';
COMMENT ON COLUMN student18.tb_book.year                    IS 'Год выпуска книги';
COMMENT ON COLUMN student18.tb_book.pages                   IS 'Количество страниц';
COMMENT ON COLUMN student18.tb_book.downloads               IS 'Количество скачиваний';


CREATE TABLE IF NOT EXISTS student18.tb_book_to_genre();

ALTER TABLE IF EXISTS student18.tb_book_to_genre
    ADD COLUMN IF NOT EXISTS book_id                        BIGSERIAL REFERENCES tb_book(id),
    ADD COLUMN IF NOT EXISTS genre_id                       BIGSERIAL REFERENCES tb_genre(id)
;

COMMENT ON TABLE  student18.tb_book_to_genre                IS 'Соотношение книги с жанром';
COMMENT ON COLUMN student18.tb_book_to_genre.book_id        IS 'Идентификатор книги';
COMMENT ON COLUMN student18.tb_book_to_genre.genre_id       IS 'Идентификатор жанра';

CREATE TABLE IF NOT EXISTS student18.tb_book_to_author();

ALTER TABLE IF EXISTS student18.tb_book_to_author
    ADD COLUMN IF NOT EXISTS book_id                        BIGSERIAL REFERENCES tb_book(id),
    ADD COLUMN IF NOT EXISTS author_id                      BIGSERIAL REFERENCES tb_author(id)
;

COMMENT ON TABLE  student18.tb_book_to_author               IS 'Соотношение книги с автором';
COMMENT ON COLUMN student18.tb_book_to_author.book_id       IS 'Идентификатор книги';
COMMENT ON COLUMN student18.tb_book_to_author.author_id     IS 'Идентификатор автора';