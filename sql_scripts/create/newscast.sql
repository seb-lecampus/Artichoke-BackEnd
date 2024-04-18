DROP TABLE IF EXISTS newscast;
CREATE TABLE newscast (
    reference_newscast BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_event BIGINT,
    title_newscast TINYTEXT NOT NULL,
    image_newscast TINYTEXT,
    description_newscast TINYTEXT,
    FOREIGN KEY (id_event) REFERENCES event(id_event)
);