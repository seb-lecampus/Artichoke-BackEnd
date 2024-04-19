DROP TABLE IF EXISTS account;
CREATE TABLE account(
    id_account BIGINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    login_account TINYTEXT NOT NULL,
    password_account TINYTEXT NOT NULL,
    authorities_account TINYTEXT NOT NULL
);