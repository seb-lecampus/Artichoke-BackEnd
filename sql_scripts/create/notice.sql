DROP TABLE IF EXISTS notice;
CREATE TABLE notice (
    id_notice BIGINT AUTO_INCREMENT PRIMARY KEY,
    rate_notice numeric CHECK (rate_notice >= 1 and rate_notice <= 5),
    title_notice TINYTEXT NOT NULL,
    image_notice TEXT,
    description_notice TEXT,
    lastName_notice TINYTEXT COMMENT "user can write any name, like different name of their",
    id_user BIGINT,
    FOREIGN KEY (id_user) REFERENCES user(id_user)
);