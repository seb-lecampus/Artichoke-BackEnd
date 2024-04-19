# Docker-compose

Put the MySQL root password in `.mysql_db_pass` file (without .extension) next to the `docker-compose.yml` file.

Run `docker compose up --build`.

MySQL port is `6603`.

# TODO
[] docker-compose : CI/CD
[] docker-compose : Use profil
[] Create user in MySQL with required privileges only and remove root