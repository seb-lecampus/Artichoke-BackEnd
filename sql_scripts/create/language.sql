DROP TABLE IF EXISTS language;
CREATE TABLE language (
    reference_language BIGINT AUTO_INCREMENT PRIMARY KEY,
    translate_english_language TINYTEXT,
    translate_french_language TINYTEXT,
    translate_italian_language TINYTEXT
);