DROP TABLE IF EXISTS facture;
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