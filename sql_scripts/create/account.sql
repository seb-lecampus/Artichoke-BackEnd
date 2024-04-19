DROP TABLE IF EXISTS account;
CREATE TABLE account(
    id_account BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    login_account VARCHAR(255) UNIQUE,
    password_account VARCHAR(255),
    authorities_account VARCHAR(255)
);