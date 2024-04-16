DROP TABLE IF EXISTS account;
CREATE TABLE account(
    id_account INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    login_account TINYTEXT,
    password_account TINYTEXT,
    authorities TINYTEXT
);