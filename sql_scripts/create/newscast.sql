DROP TABLE IF EXISTS newscast;
CREATE TABLE newscast (
    reference_newscast BIGINT AUTO_INCREMENT PRIMARY KEY,
    title_newscast TINYTEXT NOT NULL,
    image_newscast TINYTEXT,
    description_newscast TINYTEXT NOT NULL,
    id_event BIGINT,
    FOREIGN KEY (id_event) REFERENCES event(id_event)
);