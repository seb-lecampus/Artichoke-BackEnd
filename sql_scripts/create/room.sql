DROP TABLE IF EXISTS room;
CREATE TABLE room (
    number_room INT PRIMARY KEY NOT NULL,
    ref_type INT,
    FOREIGN KEY (ref_type) REFERENCES type_room(ref_type)
);