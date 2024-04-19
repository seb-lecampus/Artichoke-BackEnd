DROP TABLE IF EXISTS event;
CREATE TABLE event(
    id_event BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    title_event TINYTEXT NOT NULL,
    seat_event TINYTEXT NOT NULL,
    date_start_event DATE NOT NULL,
    date_end_event DATE NOT NULL,
    image_event TINYTEXT,
    description_event TINYTEXT
);