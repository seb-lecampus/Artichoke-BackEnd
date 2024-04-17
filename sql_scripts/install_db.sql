CREATE DATABASE artichoke;
USE artichoke;

-- Creation Dependency 0 | 10 tables

DROP TABLE IF EXISTS account;
CREATE TABLE account(
    id_account INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    login_account TINYTEXT,
    password_account TINYTEXT,
    authorities TINYTEXT
);

DROP TABLE IF EXISTS advantage;
CREATE TABLE advantage (
    reference_advantage INT AUTO_INCREMENT PRIMARY KEY,
    title_advantage TINYTEXT,
    description_advantage TINYTEXT
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

DROP TABLE IF EXISTS language;
CREATE TABLE language (
    reference_language INT AUTO_INCREMENT PRIMARY KEY,
    translate_english_language TINYTEXT,
    translate_french_language TINYTEXT,
    translate_italian_language TINYTEXT
);

DROP TABLE IF EXISTS payment;
CREATE TABLE payment (
    id_payment INT AUTO_INCREMENT PRIMARY KEY,
    name_payment TINYTEXT NOT NULL,
    number_payment VARCHAR(16) NOT NULL,
    expiry_payment DATE NOT NULL,
    cryptogram_payment VARCHAR(3) NOT NULL
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

DROP TABLE IF EXISTS video;
CREATE TABLE video(
    reference_video INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    titre_video TINYTEXT,
    description_video TINYTEXT,
    content_video TINYTEXT
);

-- Insertion Dependency 0 | 10 tables

INSERT INTO account (login_account, password_account, authorities)
VALUES
    ('test@gmail.com', 'password', 'access'),
    ('LeBadBoy', 'jshjksjhsdh', 'employee');

INSERT INTO advantage (title_advantage, description_advantage)
VALUES
    ('Happiness', 'This hotel is the best');

INSERT INTO company (name_company, adress_company, email_company, telephone_company)
VALUES
    ('Tech-Techno', '00 rue Machin, quelquePart', 'tech@gmail.com', '00 11 22 33 44 55' ),
    ('Fac Industrie', '22 rue nulla, ville', 'ind@gmail.com', '07 02 03 05 09 10' );

INSERT INTO event (title_event, seat_event, date_start_event, date_end_event, image_event, description_event)
VALUES
    ('tech&fest', '33 rue grand place', '2024-04-18', '2024-04-19','https://www.mountain-planet.com/wp-content/themes/mountain-planet/www/img/foule.webp', 'forum' ),
    ('bad boy event', '12', '2024-06-06', '2024-06-08', '1', '1');

INSERT INTO extra (name_extra, price_type_extra, description_extra)
VALUES
    ('Sebs favorite toy', 12.60, 'Sebs favorite toy that keeps you warm at night');

INSERT INTO language (translate_english_language, translate_french_language, translate_italian_language)
VALUES
    ('Hello', 'Bonjour', 'Buongiorno ');

INSERT INTO payment (name_payment, number_payment, expiry_payment, cryptogram_payment)
VALUES
    ('Serge', '1234567890123456', '2024-04-08', '123'),
    ('Ibra', '0987654321234567', '2023-12-10', '456');

INSERT INTO promo (price_promo, date_start_promo, date_end_promo, image_promo)
VALUES
    (30.00, '2024-09-10', '2024-09-17','1');

INSERT INTO type_room (name, price, size_room)
VALUES
    ('Normal', 16.99, '3');

INSERT INTO video (titre_video, description_video, content_video)
VALUES
    ('Seb favorite video', 'This video has a bunch of funny things about seb', 'happy video');