DROP TABLE IF EXISTS promo;
CREATE TABLE promo(
    reference_promo BIGINT AUTO_INCREMENT PRIMARY KEY,
    price_promo DECIMAL(10, 2),
    date_start_promo DATE NOT NULL,
    date_end_promo DATE NOT NULL,
    image_promo TINYTEXT
);