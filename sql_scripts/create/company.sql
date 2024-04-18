DROP TABLE IF EXISTS company;
CREATE TABLE company(
    id_company BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name_company TINYTEXT NOT NULL,
    address_company TINYTEXT NOT NULL,
    email_company TINYTEXT NOT NULL,
    telephone_company TINYTEXT
);