DROP TABLE IF EXISTS user_company;
CREATE TABLE user_company(
    id_user_company BIGINT AUTO_INCREMENT PRIMARY KEY,
    id_company BIGINT,
    id_user BIGINT,
    FOREIGN KEY (id_company) REFERENCES company(id_company),
    FOREIGN KEY (id_user) REFERENCES user(id_user)
);