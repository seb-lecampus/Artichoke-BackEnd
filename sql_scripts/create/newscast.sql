DROP TABLE IF EXISTS newscast;
CREATE TABLE newscast (
    reference_newscast INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_event INT,
    title_newscast TINYTEXT,
    image_newscast TINYTEXT,
    description_newscast TINYTEXT,
    FOREIGN KEY (id_event) REFERENCES event(id_event)
);