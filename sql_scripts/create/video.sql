DROP TABLE IF EXISTS video;
CREATE TABLE video(
    reference_video BIGINT AUTO_INCREMENT PRIMARY KEY,
    titre_video TINYTEXT,
    description_video TINYTEXT,
    content_video TINYTEXT
);