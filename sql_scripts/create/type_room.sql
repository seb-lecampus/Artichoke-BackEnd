DROP TABLE IF EXISTS type_room;
CREATE TABLE type_room(
    ref_type BIGINT AUTO_INCREMENT PRIMARY KEY,
    name TINYTEXT,
    price DECIMAL(10, 2),
    size_room TINYTEXT
);