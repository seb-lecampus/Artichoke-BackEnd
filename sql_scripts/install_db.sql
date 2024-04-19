CREATE DATABASE artichoke;

USE artichoke;

-- Creation Dependency 0 | 10 tables

CREATE TABLE account(
    id_account BIGINT AUTO_INCREMENT PRIMARY KEY,
    login_account TINYTEXT NOT NULL,
    password_account TINYTEXT NOT NULL,
    authorities_account TINYTEXT NOT NULL
);

CREATE TABLE advantage (
   reference_advantage BIGINT AUTO_INCREMENT PRIMARY KEY,
   title_advantage TINYTEXT NOT NULL,
   description_advantage TINYTEXT NOT NULL
);

CREATE TABLE company(
    id_company BIGINT AUTO_INCREMENT PRIMARY KEY,
    name_company TINYTEXT NOT NULL,
    address_company TINYTEXT NOT NULL,
    email_company TINYTEXT NOT NULL,
    telephone_company TINYTEXT
);

CREATE TABLE event(
    id_event BIGINT AUTO_INCREMENT PRIMARY KEY,
    title_event TINYTEXT NOT NULL,
    seat_event TINYTEXT NOT NULL,
    date_start_event DATE NOT NULL,
    date_end_event DATE NOT NULL,
    image_event TINYTEXT,
    description_event TINYTEXT
);


CREATE TABLE extra(
    id_extra BIGINT AUTO_INCREMENT PRIMARY KEY,
    name_extra TINYTEXT NOT NULL,
    price_type_extra DECIMAL(10, 2) NOT NULL,
    description_extra TINYTEXT
);

CREATE TABLE language (
    reference_language BIGINT AUTO_INCREMENT PRIMARY KEY,
    translate_english_language TINYTEXT NOT NULL,
    translate_french_language TINYTEXT NOT NULL,
    translate_italian_language TINYTEXT NOT NULL
);

CREATE TABLE payment (
    id_payment BIGINT AUTO_INCREMENT PRIMARY KEY,
    name_payment TINYTEXT NOT NULL,
    number_payment VARCHAR(16) NOT NULL,
    expiry_payment DATE NOT NULL,
    cryptogram_payment VARCHAR(3) NOT NULL
);

CREATE TABLE promo(
    reference_promo BIGINT AUTO_INCREMENT PRIMARY KEY,
    price_promo DECIMAL(10, 2),
    date_start_promo DATE NOT NULL,
    date_end_promo DATE NOT NULL,
    image_promo TINYTEXT
);

CREATE TABLE type_room(
    ref_type BIGINT AUTO_INCREMENT PRIMARY KEY,
    name TINYTEXT,
    price DECIMAL(10, 2),
    size_room TINYTEXT
);

CREATE TABLE video(
    reference_video BIGINT AUTO_INCREMENT PRIMARY KEY,
    titre_video TINYTEXT,
    description_video TINYTEXT,
    content_video TINYTEXT
);

-- Creation Dependency 1 | 3 Tables

CREATE TABLE user (
    id_user BIGINT AUTO_INCREMENT PRIMARY KEY,
    firstName_user TINYTEXT NOT NULL,
    lastName_user TINYTEXT NOT NULL,
    date_of_birth_user DATE NOT NULL,
    email_user TINYTEXT NOT NULL,
    telephone_user TINYTEXT,
    gender_user TINYTEXT,
    id_payment BIGINT,
    id_account BIGINT,
    FOREIGN KEY (id_payment) REFERENCES payment(id_payment),
    FOREIGN KEY (id_account) REFERENCES account(id_account)
);

CREATE TABLE newscast (
    reference_newscast BIGINT AUTO_INCREMENT PRIMARY KEY,
    title_newscast TINYTEXT NOT NULL,
    image_newscast TINYTEXT,
    description_newscast TINYTEXT NOT NULL,
    id_event BIGINT,
    FOREIGN KEY (id_event) REFERENCES event(id_event)
);

CREATE TABLE room (
    number_room BIGINT AUTO_INCREMENT PRIMARY KEY,
    ref_type BIGINT,
    FOREIGN KEY (ref_type) REFERENCES type_room(ref_type)
);

-- Creation Dependency 2 | 4 Tables

CREATE TABLE reservation (
    id_reservation BIGINT AUTO_INCREMENT PRIMARY KEY,
    start_date_reservation DATE NOT NULL,
    end_date_reservation DATE NOT NULL,
    nbr_person_reservation INT NOT NULL,
    id_user BIGINT,
    number_room BIGINT,
    reference_promo BIGINT,
    FOREIGN KEY (id_user) REFERENCES user(id_user),
    FOREIGN KEY (number_room) REFERENCES room(number_room),
    FOREIGN KEY (reference_promo) REFERENCES promo(reference_promo)
);

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

CREATE TABLE user_event(
    id_user_event BIGINT AUTO_INCREMENT PRIMARY KEY,
    id_user BIGINT,
    id_event BIGINT,
    FOREIGN KEY (id_user) REFERENCES user(id_user),
    FOREIGN KEY (id_event) REFERENCES event(id_event)
);

CREATE TABLE user_company(
    id_user_company BIGINT AUTO_INCREMENT PRIMARY KEY,
    id_company BIGINT,
    id_user BIGINT,
    FOREIGN KEY (id_company) REFERENCES company(id_company),
    FOREIGN KEY (id_user) REFERENCES user(id_user)
);

-- Creation Dependency 3 | 2 Tables

CREATE TABLE reservation_extra(
    id_reservation_extra BIGINT AUTO_INCREMENT PRIMARY KEY,
    id_reservation BIGINT,
    id_extra BIGINT,
    FOREIGN KEY (id_reservation) REFERENCES reservation(id_reservation),
    FOREIGN KEY (id_extra) REFERENCES extra(id_extra)
);

CREATE TABLE facture (
    reference_facture BIGINT AUTO_INCREMENT PRIMARY KEY,
    date_facture DATE NOT NULL,
    summary_facture TINYTEXT NOT NULL,
    state_facture ENUM('Paid', 'Unpaid', 'Canceled', 'Refused') DEFAULT 'Unpaid',
    id_reservation BIGINT,
    id_user BIGINT,
    id_payment BIGINT,
    FOREIGN KEY (id_reservation) REFERENCES reservation(id_reservation),
    FOREIGN KEY (id_user) REFERENCES user(id_user),
    FOREIGN KEY (id_payment) REFERENCES payment(id_payment)
);