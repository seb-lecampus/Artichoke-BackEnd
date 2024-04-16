DROP TABLE IF EXISTS promo;
CREATE TABLE promo(
    reference_promo INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    price_promo DECIMAL(10, 2),
    date_start_promo DATE,
    date_end_promo DATE,
    image_promo TINYTEXT
);