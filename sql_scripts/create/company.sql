DROP TABLE IF EXISTS company;
CREATE TABLE company(
    id_company INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name_company TINYTEXT,
    adress_company TINYTEXT,
    email_company TINYTEXT,
    telephone_company TINYTEXT
);