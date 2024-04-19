DROP TABLE IF EXISTS facture;
CREATE TABLE facture (
    reference_facture BIGINT AUTO_INCREMENT PRIMARY KEY,
    id_reservation BIGINT,
    id_user BIGINT,
    id_payment BIGINT,
    date_facture DATE NOT NULL,
    summary_facture TINYTEXT NOT NULL,
    state_facture TINYTEXT NOT NULL,
    FOREIGN KEY (id_reservation) REFERENCES reservation(id_reservation),
    FOREIGN KEY (id_user) REFERENCES user(id_user),
    FOREIGN KEY (id_payment) REFERENCES payment(id_payment)
);