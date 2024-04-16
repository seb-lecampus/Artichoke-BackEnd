CREATE TABLE payment (
    id_payment INT AUTO_INCREMENT PRIMARY KEY,
    name_payment VARCHAR(50) NOT NULL,
    number_payment VARCHAR(16) NOT NULL,
    expiry_payment DATE NOT NULL, -- not sure
    cryptogram_payment VARCHAR(3) NOT NULL
)