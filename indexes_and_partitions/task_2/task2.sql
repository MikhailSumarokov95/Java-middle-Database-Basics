CREATE TABLE IF NOT EXISTS student18.tb_book(
    name                           VARCHAR,
    author						   VARCHAR,
    year                           SMALLINT,
    pages                          SMALLINT,
    genre						   VARCHAR,
    downloads                      SMALLINT
) PARTITION BY RANGE (downloads);

CREATE TABLE student18.tb_book_downloads_less_1000 PARTITION OF student18.tb_book
    FOR VALUES FROM (0) TO (1000);

CREATE TABLE student18.tb_book_downloads_between_1000_and_10000 PARTITION OF student18.tb_book
    FOR VALUES FROM (1000) TO (10000);

CREATE TABLE student18.tb_book_downloads_more_10000 PARTITION OF student18.tb_book
    FOR VALUES FROM (10000) to (MAXVALUE);