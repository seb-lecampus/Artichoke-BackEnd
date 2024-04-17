DROP TABLE IF EXISTS user_event;
CREATE TABLE user_event(
    id_user_company INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_company INT ,
    id_user INT,
    FOREIGN KEY (id_company) REFERENCES company(id_company),
    FOREIGN KEY (id_user) REFERENCES user(id_user)

);