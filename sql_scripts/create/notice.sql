DROP TABLE IF EXISTS notice;
CREATE TABLE notice (
    id_notice BIGINT AUTO_INCREMENT PRIMARY KEY,
    reference_notice INT,
    title_notice TINYTEXT,
    image_notice TEXT,
    note_notice TEXT,
    lastName_notice TINYTEXT,
    id_user BIGINT,
    FOREIGN KEY (id_user) REFERENCES user(id_user)
);