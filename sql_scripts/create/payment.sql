DROP TABLE IF EXISTS payment;
CREATE TABLE payment (
    id_payment INT AUTO_INCREMENT PRIMARY KEY,
    name_payment TINYTEXT NOT NULL,
    number_payment VARCHAR(16) NOT NULL,
    expiry_payment DATE NOT NULL,
    cryptogram_payment VARCHAR(3) NOT NULL
);