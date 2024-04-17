DROP TABLE IF EXISTS video;
CREATE TABLE video(
    reference_video BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    titre_video TINYTEXT,
    description_video TINYTEXT,
    content_video TINYTEXT
);