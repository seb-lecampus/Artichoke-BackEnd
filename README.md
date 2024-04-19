# Artichoke-BackEnd

A Hotel Application created by Team 4

## Requirments

For building and running the application you need:
- [Docker](https://www.docker.com/)

## Setup the dev environement - Docker-compose

- Put the MySQL root password in `.mysql_db_pass` file (without .extension) next to the `docker-compose.yml` file.
- MySQL port is `6603`.

## Commands to run this application locally

- Run command in the root folder
```bash
docker compose up --build -d
```