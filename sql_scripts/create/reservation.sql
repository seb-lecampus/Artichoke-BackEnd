DROP TABLE IF EXISTS reservation;
CREATE TABLE reservation (
    id_reservation BIGINT AUTO_INCREMENT PRIMARY KEY,
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