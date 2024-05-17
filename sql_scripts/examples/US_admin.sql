-- As a admin, I want to see all the logins on the site are employees
SELECT login_account FROM account WHERE authorities_account = 'employee';