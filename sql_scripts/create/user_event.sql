DROP TABLE IF EXISTS user_event;
CREATE TABLE user_event(
    id_user_event INT AUTO_INCREMENT PRIMARY KEY,
    id_user INT,
    id_event INT,
    FOREIGN KEY (id_user) REFERENCES user(id_user),
    FOREIGN KEY (id_event) REFERENCES event(id_event)
);