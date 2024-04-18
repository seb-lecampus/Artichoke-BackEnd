DROP TABLE IF EXISTS extra;
CREATE TABLE extra(
    id_extra BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name_extra TINYTEXT,
    price_type_extra DECIMAL(10, 2) NOT NULL,
    description_extra TINYTEXT
);