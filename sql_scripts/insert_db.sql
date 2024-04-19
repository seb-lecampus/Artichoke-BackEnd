USE artichoke;
-- Insertion Dependency 0 | 10 tables

INSERT INTO account (login_account, password_account, authorities_account)
VALUES
    ('test@gmail.com', 'password', 'client'),
    ('LeBadBoy', 'jshjksjhsdh', 'employee'),
    ('MisterBean', 'helloworld', 'admin'),
    ('Batman', 'brucewayne', 'client'),
    ('Johnny', 'rockandroll123', 'employee');

INSERT INTO advantage (title_advantage, description_advantage)
VALUES
    ('Happiness', 'This hotel is the best');

INSERT INTO company (name_company, address_company, email_company, telephone_company)
VALUES
    ('Tech-Techno', '00 rue Machin, quelquePart', 'tech@gmail.com', '00 11 22 33 44 55' ),
    ('Fac Industrie', '22 rue nulla, ville', 'ind@gmail.com', '07 02 03 05 09 10' );

INSERT INTO event (title_event, seat_event, date_start_event, date_end_event, image_event, description_event)
VALUES
    ('tech&fest', '1000', '2024-04-18', '2024-04-19','https://www.mountain-planet.com/wp-content/themes/mountain-planet/www/img/foule.webp', 'forum' ),
    ('bad boy event', '12', '2024-06-06', '2024-06-08', '1', '1'),
    ('mountain-planet', '2000', '2024-04-16', '2024-04-18', 'https://www.mountain-planet.com/', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt');

INSERT INTO extra (name_extra, price_type_extra, description_extra)
VALUES
    ('Formule demi-pension', 20.00, 'soir - 20€/personne/jour'),
    ('Formule pension complète', 35, 'midi + soir - 35€/personne/jour'),
    ('Formule petit déjeuner', 9,'matin - 9€/personne/jour'),
    ('Service de pressing tout-compris', 30,'30€/personne/jour'),
    ('Télévision', 10, '10€/semaine'),
    ('Wifi', 25, '25€ en une fois');

INSERT INTO language (translate_english_language, translate_french_language, translate_italian_language)
VALUES
    ('Hello', 'Bonjour', 'Buongiorno ');

INSERT INTO payment (name_payment, number_payment, expiry_payment, cryptogram_payment)
VALUES
    ('Szynkarski', '1234567890123456', '2024-04-08', '123'),
    ('Roll', '0987654321234567', '2023-12-10', '456'),
    ('John', '777777777777', '2025-08-09', '789'),
    ('Jane', '555522225555', '2026-01-01', '789');

INSERT INTO promo (price_promo, date_start_promo, date_end_promo, image_promo)
VALUES
    (30.00, '2024-09-10', '2024-09-17','1'),
    (15.99, '2024-04-22', '2024-05-16', 'https://static.wikia.nocookie.net/zelda/images/d/d2/Artwork_Link_TOTK.png/revision/latest/scale-to-width-down/1000?cb=20230723064831&path-prefix=fr');

INSERT INTO type_room (name, price, size_room)
VALUES
    ('Normal', 16.99, '3'),
    ('Lux', 39.99, '3'),
    ('Suite', 77.77, '3');

INSERT INTO video (titre_video, description_video, content_video)
VALUES
    ('Seb favorite video', 'This video has a bunch of funny things about seb', 'happy video');

-- Insertion Dependency 1 | 3 tables

INSERT INTO user (firstName_user, lastName_user, date_of_birth_user, email_user, telephone_user, gender_user, id_payment, id_account) VALUES
    ('serge', 'szynkarski', '1992-02-06', 'serge.szynkarski@le-campus-numerique.fr', '06121212', 'Male', 1, 1),
    ('Rick', 'Roll', '1984-02-06', 'rick.roll@google.fr', '07145654', 'Male', 2, 2),
    ('John', 'Doe', '1978-10-06', 'John.doe@live.fr', '04676543', 'Male', 3, 3),
    ('Jane', 'Wayne', '1994-06-07', 'Jane.Wayne@yahoo.fr', '06123456', 'Female', 4, 4);

INSERT INTO newscast (id_event, title_newscast, image_newscast, description_newscast)
VALUES
    (1, 'Rainy day', 'image 1', 'The craziest rainy day ever');

INSERT INTO room (number_room, ref_type)
VALUES
    (1, 1),
    (2, 2),
    (3, 3);

-- Insertion Dependency 2 | 4 tables

INSERT INTO reservation (id_user, number_room, reference_promo, start_date_reservation, end_date_reservation, nbr_person_reservation)
VALUES
    (1, 1, 1, '2024-01-01', '2024-01-07', 3);

INSERT INTO notice (rate_notice, title_notice, image_notice, description_notice, lastName_notice, id_user)
VALUES
    (4, 'Great hotel', 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', 'Lorem lorem oh lorem', 'Your favorite client', 2);

INSERT INTO user_event (id_user, id_event)
VALUES
    (1, 1),
    (3, 2),
    (4, 1);

INSERT INTO user_company (id_company, id_user)
VALUES
    (1, 4);

-- Insertion Dependency 3 | 2 tables

INSERT INTO reservation_extra (id_reservation, id_extra)
VALUES
    (1, 6);

INSERT INTO facture (id_reservation, id_user, id_payment, date_facture, summary_facture, state_facture)
VALUES
    (1, 1, 1, '2024-06-01', 'Here is the summary', 'Paid');