select r.number_room
from reservation
    join artichoke.room r on reservation.number_room = r.number_room
    where start_date_reservation != '2024-01-08' and end_date_reservation != '2024-01-16';














