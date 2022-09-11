# Grupo-2-Cripto-Dev
<h3>O intuito deste projeto é criar um Smart Contract de uma Vending Machine em Solidity.<h3>

------------------------

_O projeto foi idealizado em **JavaScript** e **Solidity**._

Realizado em grupo pelos seguintes participantes:

<table align="center">
  <tr>
    <td align="center"><a href="https://github.com/Bieoool355"><img style="border-radius: 50%;" src="https://media-exp1.licdn.com/dms/image/C4E03AQGmdPDFJrIYVQ/profile-displayphoto-shrink_400_400/0/1609886603783?e=1668643200&v=beta&t=PhzDHqlgQ2lWyCrc8KXSG_LybFGbb1yW4yq-rFk82xc" width="150px;"alt=""/><br /><sub><b>Gabriel Lúcio</b></sub></a><br /></td>
    <td align="center"><a href="https://github.com/MariaLuizaDMoura"><img style="border-radius: 50%;" src="https://avatars.githubusercontent.com/u/90870156?v=4" width="150px;" alt=""/><br /><sub><b>Maria Luiza Moura</b></sub></a><br /></td> 
    <td align="center"><a href="https://github.com/tamaraafvieira"><img style="border-radius: 50%;" src="https://media-exp1.licdn.com/dms/image/C4D03AQEd5GOwwbhb6A/profile-displayphoto-shrink_400_400/0/1588457010007?e=1668643200&v=beta&t=IVRkv5FqOr_fLxyeSaEQISZY-_llKjcUVjbcJoxYu8E" width="150px;" alt=""/><br /><sub><b>Tamara Vieira</b></sub></a><br /></td>
    
  </tr>
</table>

<h4 align="center">Status: Developing ⚠️</h4>

# Configuração inicial para seu contrato

### Setup NodeJS

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
### Link da apresentação
<table>
  <tr>
    <td align="center"><a href="https://www.canva.com/design/DAFGzjjB-6g/UsURT1yKFx5kU5ibbYnjJw/edit?utm_content=DAFGzjjB-6g&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton"><img style="border-radius: 50%;"/><br /><sub><b>Apresentação</b></sub></a><br /></td>
  </tr>
</table>

## Instruções de Instalação e Utilização

###### Ambientes

- O contrato da Máquina de Vendas poderá ser testado através da plataforma [Remix IDE](https://remix.ethereum.org/#optimize=false&runs=200&evmVersion=null)

###### Testes
- A execução dos testes deve ser feita em um compilador como [VS Code](https://code.visualstudio.com)
- Tenha em sua máquina a versão recomendada do [Node](https://nodejs.org/en/)
- Através do prompt de comando (famoso CMD), execute os comandos a seguir no diretório do projeto:
```shell
npm install
npx hardhat compile
npx hardhat test
```
- Caso já tenha yarn global na máquina, apenas modifique o npm:
```shell
yarn install
npx hardhat compile
npx hardhat test
```
## Técnicas e Tecnologias Utilizadas

<table>
  <tr>
    <th>
      <a href="https://docs.soliditylang.org/en/v0.8.15/">
        <img alt="Solidity v0.8.15 homepage" src="https://avantrio.xyz/blog/wp-content/uploads/2020/02/solidity-nedir.png"
             width="200" height="82"/>
      </a>
    </th>
    <th>Nossos smart contracts estão desenvolvidos em Solidity </th>
  </tr>
  <tr>
    <th>
      <a href="https://remix.ethereum.org/#optimize=false&runs=200&evmVersion=null">
        <img alt="Remix - Ethereum IDE" src="https://i.imgur.com/Nq1ImZp.jpg"
             width="200" height="80"/>
      </a>
    </th>
    <th>Realizamos todos os testes de execução na plataforma Remix IDE </th>
  </tr>
  <tr>
    <th>
      <a href="https://github.com">
        <img alt="GitHub" src="https://sempreupdate.com.br/wp-content/uploads/2021/08/genexus.jpg"
             width="200" height="106"/>
      </a>
    </th>
    <th>O código fonte do projeto e versionamento, bem como <br>
	esta documentação estão armazenados no GitHub</th>
  </tr>
  <tr>
    <th>
      <a href="https://hardhat.org">
        <img alt="Hardhat - Ethereum development environment for professionals" src="https://hardhat.org/card.jpg"
             width="200" height="106"/>
      </a>
    </th>
    <th>Utilizamos o ambiente de desenvolvimento Hardhat<br>
	para realização dos testes unitários</th>
  </tr>
  <tr>
    <th>
      <a href="https://code.visualstudio.com">
        <img alt="Visual Studio Code - Code Editing. Redefined" src="https://www.freecodecamp.org/news/content/images/size/w2000/2021/08/vscode.png"
             width="200" height="100"/>
      </a>
    </th>
    <th>Precisamos do compilador Visual Studio Code para<br>
	nosso ambiente de testes</th>
  </tr>
  <tr>
    <th>
      <a href="https://trello.com">
        <img alt="Trello Official Website" src="https://blog.saninternet.com/wp-content/uploads/2017/11/como-ser-mais-produtivo-trello-SECNET-868x488-1.jpg"
             width="200" height="106"/>
      </a>
    </th>
    <th>Organizamos nossas tarefas através da plataforma Trello</th>
  </tr>
</table>
