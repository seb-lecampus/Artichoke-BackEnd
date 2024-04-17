DROP TABLE IF EXISTS reservation_extra;
CREATE TABLE reservation_extra(
    id_reservation_extra INT AUTO_INCREMENT PRIMARY KEY,
    id_reservation INT,
    id_extra INT,
    FOREIGN KEY (id_reservation) REFERENCES reservation(id_reservation),
    FOREIGN KEY (id_extra) REFERENCES extra(id_extra)
);