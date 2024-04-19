DROP TABLE IF EXISTS account;
CREATE TABLE account(
    id_account BIGINT AUTO_INCREMENT PRIMARY KEY,
    login_account TINYTEXT NOT NULL,
    password_account TINYTEXT NOT NULL,
    authorities_account TINYTEXT NOT NULL
);