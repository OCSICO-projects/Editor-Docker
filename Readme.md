# Editor docker

## Requirements

- Linux >= 16.04
- Docker >= 17.12
- Git

## Install

- `cp env-example .env`
- Add the domain to the `/etc/hosts` file
`127.0.0.1  editor.local`:
```
sudo sed -i '1s/^/127.0.0.1       editor.local\n/' /etc/hosts
```

- Create SQL copy from example:

```
cp mysql/docker-entrypoint-initdb.d/createdb.sql.example mysql/docker-entrypoint-initdb.d/createdb.sql
```
- `docker-compose build nginx mysql php-worker`

- Start docker containers on production:

`docker-compose up -d nginx mysql php-worker redis`

## Development

Start docker containers:

`docker-compose up -d nginx mysql php-worker redis phpredisadmin portainer`

Open your browser with enabled port:

`http://editor.local:82`