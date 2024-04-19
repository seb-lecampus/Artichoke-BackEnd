DROP TABLE IF EXISTS event;
CREATE TABLE event(
    id_event BIGINT AUTO_INCREMENT PRIMARY KEY,
    title_event TINYTEXT NOT NULL,
    seat_event TINYTEXT NOT NULL,
    date_start_event DATE NOT NULL,
    date_end_event DATE NOT NULL,
    image_event TINYTEXT,
    description_event TINYTEXT
);