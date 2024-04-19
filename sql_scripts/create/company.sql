DROP TABLE IF EXISTS company;
CREATE TABLE company(
    id_company BIGINT AUTO_INCREMENT PRIMARY KEY,
    name_company TINYTEXT NOT NULL,
    address_company TINYTEXT NOT NULL,
    email_company TINYTEXT NOT NULL,
    telephone_company TINYTEXT
);