DROP TABLE IF EXISTS language;
CREATE TABLE language (
    reference_language INT AUTO_INCREMENT PRIMARY KEY,
    translate_english_language TINYTEXT,
    translate_french_language TINYTEXT,
    translate_italian_language TINYTEXT
);