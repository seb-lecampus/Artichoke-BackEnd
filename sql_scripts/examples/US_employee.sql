-- As an employee, I need to check which promotions on a specific day are available
SELECT reference_promo AS Promo_Number, date_start_promo AS Promo_Start, date_end_promo AS Promo_End
FROM promo WHERE date_start_promo = '2024-09-10';