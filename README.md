# Artichoke-BackEnd

A Hotel Application created by Team 4

## Requirments

For building and running the application you need:
- [Docker](https://www.docker.com/)

## Commands to run this application in dev environement
- Put the MySQL root password in `.mysql_db_pass` file (without .extension) next to the `docker-compose.yml` file.
- MySQL port is `6603`.

- Run command in the root folder
```bash
docker compose up --build --profile dev -d
```

## Commands to run this application in staging environement
- make CI/CD create the `.mysql_db_pass` file
- MySQL port is default `3306`, but can't be accessed from outside docker.
```bash
docker compose up --build --profile staging -d
```


## TODO
[] configure CI/CD staging environement
[] mysql user. Delete root, create one with required privileg only.