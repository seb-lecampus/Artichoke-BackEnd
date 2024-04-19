DROP TABLE IF EXISTS room;
CREATE TABLE room (
    number_room BIGINT AUTO_INCREMENT PRIMARY KEY,
    ref_type BIGINT,
    FOREIGN KEY (ref_type) REFERENCES type_room(ref_type)
);