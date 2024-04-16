DROP TABLE IF EXISTS video;
CREATE TABLE video(
    reference_video INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    titre_video TINYTEXT,
    description_video TINYTEXT,
    content_video TINYTEXT
);