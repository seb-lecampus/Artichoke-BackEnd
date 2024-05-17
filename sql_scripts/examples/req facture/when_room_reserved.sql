select * from room
    join artichoke.reservation r on room.number_room = r.number_room
         where start_date_reservation = '2024-01-01' and end_date_reservation = '2024-01-07';