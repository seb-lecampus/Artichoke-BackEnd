-- As an client, I want to see the reservation of the rooms.
SELECT type_room.ref_type AS Room_Number, type_room.name AS Room_Name, type_room.price AS Price
FROM type_room;