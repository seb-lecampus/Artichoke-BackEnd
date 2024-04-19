DROP TABLE IF EXISTS advantage;
CREATE TABLE advantage (
    reference_advantage BIGINT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    title_advantage TINYTEXT NOT NULL,
    description_advantage TINYTEXT NOT NULL
);