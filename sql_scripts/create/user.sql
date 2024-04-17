DROP TABLE IF EXISTS user;
CREATE TABLE user (
    id_user BIGINT AUTO_INCREMENT PRIMARY KEY,
    firstName_user TINYTEXT,
    lastName_user TINYTEXT,
    date_of_birth_user DATE,
    email_user TINYTEXT,
    telephone_user TINYTEXT,
    gender_user TINYTEXT,
    id_payment BIGINT,
    id_account BIGINT,
    FOREIGN KEY (id_payment) REFERENCES payment(id_payment),
    FOREIGN KEY (id_account) REFERENCES account(id_account)
);