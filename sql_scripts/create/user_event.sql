DROP TABLE IF EXISTS user_event;
CREATE TABLE user_event(
    id_user_event BIGINT AUTO_INCREMENT PRIMARY KEY,
    id_user BIGINT,
    id_event BIGINT,
    FOREIGN KEY (id_user) REFERENCES user(id_user),
    FOREIGN KEY (id_event) REFERENCES event(id_event)
);