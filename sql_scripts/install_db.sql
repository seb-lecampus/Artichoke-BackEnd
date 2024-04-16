CREATE DATABASE artichoke;
USE artichoke;

DROP TABLE IF EXISTS account;
CREATE TABLE account(
    id_account INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    login_account TINYTEXT,
    password_account TINYTEXT,
    authorities TINYTEXT
);

DROP TABLE IF EXISTS company;
CREATE TABLE company(
    id_company INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name_company TINYTEXT,
    adress_company TINYTEXT,
    email_company TINYTEXT,
    telephone_company TINYTEXT
);

DROP TABLE IF EXISTS event;
CREATE TABLE event(
    id_event INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    title_event TINYTEXT,
    seat_event TINYTEXT,
    date_start_event DATE,
    date_end_event DATE,
    image_event TINYTEXT,
    description_event TINYTEXT
);

DROP TABLE IF EXISTS extra;
CREATE TABLE extra(
    id_extra INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name_extra TINYTEXT,
    price_type_extra DECIMAL(10, 2),
    description_extra TINYTEXT
);

DROP TABLE IF EXISTS promo;
CREATE TABLE promo(
    reference_promo INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    price_promo DECIMAL(10, 2),
    date_start_promo DATE,
    date_end_promo DATE,
    image_promo TINYTEXT
);

DROP TABLE IF EXISTS type_room;
CREATE TABLE type_room(
    ref_type INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name TINYTEXT,
    price DECIMAL(10, 2),
    size_room TINYTEXT
);

DROP TABLE IF EXISTS type_room;
CREATE TABLE type_room(
    ref_type INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name TINYTEXT,
    price DECIMAL(10, 2),
    size_room TINYTEXT
);

DROP TABLE IF EXISTS video;
CREATE TABLE video(
    reference_video INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    titre_video TINYTEXT,
    description_video TINYTEXT,
    content_video TINYTEXT
);

DROP TABLE IF EXISTS payment;
CREATE TABLE payment (
    id_payment INT AUTO_INCREMENT PRIMARY KEY,
    name_payment TINYTEXT NOT NULL,
    number_payment VARCHAR(16) NOT NULL,
    expiry_payment DATE NOT NULL,
    cryptogram_payment VARCHAR(3) NOT NULL
);

DROP TABLE IF EXISTS language;
CREATE TABLE language (
    reference_language INT AUTO_INCREMENT PRIMARY KEY,
    translate_english_language TINYTEXT,
    translate_french_language TINYTEXT,
    translate_italian_language TINYTEXT
);

DROP TABLE IF EXISTS advantage;
CREATE TABLE advantage (
    reference_advantage INT AUTO_INCREMENT PRIMARY KEY,
    title_advantage TINYTEXT,
    description_advantage TINYTEXT
);