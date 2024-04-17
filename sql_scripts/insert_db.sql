USE artichoke;
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

-- Insertion Dependency 1 | 3 tables

INSERT INTO user (firstName_user, lastName_user, date_of_birth_user, email_user, telephone_user, gender_user, id_payment, id_account) VALUES
    ('serge', 'szynkarski', '1992-02-06', 'serge.szynkarski@le-campus-numerique.fr', '06121212', 'Male', 1, 1);

INSERT INTO newscast (id_event, title_newscast, image_newscast, description_newscast)
VALUES
    (1, 'Rainy day', 'image 1', 'The craziest rainy day ever');

INSERT INTO room (number_room, ref_type)
VALUES
    (1, 1);

-- Insertion Dependency 2 | 4 tables