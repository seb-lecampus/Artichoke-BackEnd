DROP TABLE IF EXISTS event;
CREATE TABLE event(
    id_event BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    title_event TINYTEXT NOT NULL,
    seat_event TINYTEXT,
    date_start_event DATE,
    date_end_event DATE,
    image_event TINYTEXT,
    description_event TINYTEXT
);