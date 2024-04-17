DROP TABLE IF EXISTS company;
CREATE TABLE company(
    id_company BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name_company TINYTEXT,
    address_company TINYTEXT,
    email_company TINYTEXT,
    telephone_company TINYTEXT
);