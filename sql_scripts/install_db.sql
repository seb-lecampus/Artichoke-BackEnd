CREATE DATABASE artichoke;

USE artichoke;

-- Creation Dependency 0 | 10 tables

CREATE TABLE account(
    id_account INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    login_account TINYTEXT,
    password_account TINYTEXT,
    authorities TINYTEXT
);

CREATE TABLE advantage (
    reference_advantage INT AUTO_INCREMENT PRIMARY KEY,
    title_advantage TINYTEXT,
    description_advantage TINYTEXT
);

CREATE TABLE company(
    id_company INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name_company TINYTEXT,
    adress_company TINYTEXT,
    email_company TINYTEXT,
    telephone_company TINYTEXT
);

CREATE TABLE event(
    id_event INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    title_event TINYTEXT,
    seat_event TINYTEXT,
    date_start_event DATE,
    date_end_event DATE,
    image_event TINYTEXT,
    description_event TINYTEXT
);

CREATE TABLE extra(
    id_extra INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name_extra TINYTEXT,
    price_type_extra DECIMAL(10, 2),
    description_extra TINYTEXT
);

CREATE TABLE language (
    reference_language INT AUTO_INCREMENT PRIMARY KEY,
    translate_english_language TINYTEXT,
    translate_french_language TINYTEXT,
    translate_italian_language TINYTEXT
);

CREATE TABLE payment (
    id_payment INT AUTO_INCREMENT PRIMARY KEY,
    name_payment TINYTEXT NOT NULL,
    number_payment VARCHAR(16) NOT NULL,
    expiry_payment DATE NOT NULL,
    cryptogram_payment VARCHAR(3) NOT NULL
);

CREATE TABLE promo(
    reference_promo INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    price_promo DECIMAL(10, 2),
    date_start_promo DATE,
    date_end_promo DATE,
    image_promo TINYTEXT
);

CREATE TABLE type_room(
    ref_type INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name TINYTEXT,
    price DECIMAL(10, 2),
    size_room TINYTEXT
);

CREATE TABLE video(
    reference_video INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    titre_video TINYTEXT,
    description_video TINYTEXT,
    content_video TINYTEXT
);

-- Creation Dependency 1 | 3 Tables

CREATE TABLE user (
    id_user INT AUTO_INCREMENT PRIMARY KEY,
    firstName_user TINYTEXT,
    lastName_user TINYTEXT,
    date_of_birth_user DATE,
    email_user TINYTEXT,
    telephone_user TINYTEXT,
    gender_user TINYTEXT,
    id_payment INT,
    id_account INT,
    FOREIGN KEY (id_payment) REFERENCES payment(id_payment),
    FOREIGN KEY (id_account) REFERENCES account(id_account)
);

CREATE TABLE newscast (
  reference_newscast INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  id_event INT,
  title_newscast TINYTEXT,
  image_newscast TINYTEXT,
  description_newscast TINYTEXT,
  FOREIGN KEY (id_event) REFERENCES event(id_event)
);

CREATE TABLE room (
  number_room INT PRIMARY KEY NOT NULL,
  ref_type INT,
  FOREIGN KEY (ref_type) REFERENCES type_room(ref_type)
);

-- Creation Dependency 2 | 4 Tables

CREATE TABLE reservation (
    id_reservation INT AUTO_INCREMENT PRIMARY KEY,
    id_user INT,
    number_room INT,
    reference_promo INT,
    start_date_reservation DATE,
    end_date_reservation DATE,
    nbr_person_reservation INT,
    FOREIGN KEY (id_user) REFERENCES user(id_user),
    FOREIGN KEY (number_room) REFERENCES room(number_room),
    FOREIGN KEY (reference_promo) REFERENCES promo(reference_promo)
);

CREATE TABLE notice (
    id_notice INT AUTO_INCREMENT PRIMARY KEY,
    reference_notice INT,
    title_notice TINYTEXT,
    image_notice TEXT,
    note_notice TEXT,
    lastName_notice TINYTEXT,
    id_user INT,
    FOREIGN KEY (id_user) REFERENCES user(id_user)
);

CREATE TABLE user_event(
   id_user_event INT AUTO_INCREMENT PRIMARY KEY,
   id_user INT,
   id_event INT,
   FOREIGN KEY (id_user) REFERENCES user(id_user),
   FOREIGN KEY (id_event) REFERENCES event(id_event)
);

CREATE TABLE user_company(
    id_user_company INT AUTO_INCREMENT PRIMARY KEY,
    id_company INT,
    id_user INT,
    FOREIGN KEY (id_company) REFERENCES company(id_company),
    FOREIGN KEY (id_user) REFERENCES user(id_user)
);

-- Creation Dependency 3 | 2 Tables

CREATE TABLE reservation_extra(
    id_reservation_extra INT AUTO_INCREMENT PRIMARY KEY,
    id_reservation INT,
    id_extra INT,
    FOREIGN KEY (id_reservation) REFERENCES reservation(id_reservation),
    FOREIGN KEY (id_extra) REFERENCES extra(id_extra)
);

CREATE TABLE facture (
    reference_facture INT AUTO_INCREMENT PRIMARY KEY,
    id_reservation INT,
    id_user INT,
    id_payment INT,
    date_facture DATE,
    summary_facture TINYTEXT,
    state_facture TINYTEXT,
    FOREIGN KEY (id_reservation) REFERENCES reservation(id_reservation),
    FOREIGN KEY (id_user) REFERENCES user(id_user),
    FOREIGN KEY (id_payment) REFERENCES payment(id_payment)
);