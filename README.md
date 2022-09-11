# Grupo-2-Cripto-Dev
O intuito deste projeto é criar um Smart Contract de uma Vending Machine em Solidity.

------------------------

_O projeto foi idealizado em **JavaScript** e **Solidity**._

Realizado em grupo pelos seguintes participantes:

* [Tamara Vieira](https://github.com/tamaraafvieira)
* [Maria Luíza](https://github.com/MariaLuizaDMoura)
* [Gabriel Lúcio](https://github.com/Bieoool355)

# Configuração inicial para seu contrato

## Setup NodeJS

- Startup and configuration demo project with NodeJS

### Run this started app

```shell
npm start

npm run test
```

### Git & npm commands

```shell
npm init

git init

git add .

git branch -m main

git commit -am 'message'

git checkout -b develop

npm install express

npm install jest -D
```

### Docker commands

```shell
docker-compose up --build

docker build -t started-nodejs .

docker volume create --name nodemodules
```

### Removing volumes, services and containers

```shell
docker rm app 

docker volume rm nodemodules

docker stop $(docker ps -aq)

docker rm $(docker ps -aq)
```
