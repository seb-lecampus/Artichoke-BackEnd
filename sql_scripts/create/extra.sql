DROP TABLE IF EXISTS extra;
CREATE TABLE extra(
    id_extra BIGINT AUTO_INCREMENT PRIMARY KEY,
    name_extra TINYTEXT NOT NULL,
    price_type_extra DECIMAL(10, 2) NOT NULL,
    description_extra TINYTEXT
);