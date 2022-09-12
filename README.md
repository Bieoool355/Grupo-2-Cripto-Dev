# Grupo-2-Cripto-Dev
<h3>O intuito deste projeto é criar um Smart Contract de uma Vending Machine em Solidity.<h3>

------------------------

O projeto foi idealizado em _**Solidity**_,
e o objetivo final é inaugurar uma loja no Metaverso chamada _**Lar do Concreto**_.
Como podem imaginar, é uma loja de material de construção, afinal, se existem infinitas
possibilidades através da tecnologia com NFTs relacionadas a terrenos e outros itens,
porque não vender o material para que os usuários montem suas residências conforme
desejarem? <br>
<br>
O produto inicial seria o Combo Concreto - 3 itens em um único Token - 
Areia, Brita e Cimento.

Realizado em grupo pelos seguintes participantes:

<table align="center">
  <tr>
    <td align="center"><a href="https://github.com/Bieoool355"><img style="border-radius: 50%;" src="https://media-exp1.licdn.com/dms/image/C4E03AQGmdPDFJrIYVQ/profile-displayphoto-shrink_400_400/0/1609886603783?e=1668643200&v=beta&t=PhzDHqlgQ2lWyCrc8KXSG_LybFGbb1yW4yq-rFk82xc" width="150px;"alt=""/><br /><sub><b>Gabriel Lúcio</b></sub></a><br /></td>
    <td align="center"><a href="https://github.com/MariaLuizaDMoura"><img style="border-radius: 50%;" src="https://avatars.githubusercontent.com/u/90870156?v=4" width="150px;" alt=""/><br /><sub><b>Maria Luiza Moura</b></sub></a><br /></td> 
    <td align="center"><a href="https://github.com/tamaraafvieira"><img style="border-radius: 50%;" src="https://media-exp1.licdn.com/dms/image/C4D03AQEd5GOwwbhb6A/profile-displayphoto-shrink_400_400/0/1588457010007?e=1668643200&v=beta&t=IVRkv5FqOr_fLxyeSaEQISZY-_llKjcUVjbcJoxYu8E" width="150px;" alt=""/><br /><sub><b>Tamara Vieira</b></sub></a><br /></td>
    
  </tr>
</table>

### Link da apresentação
<table align="center">
  <tr>
    <td><a href="https://www.canva.com/design/DAFGzjjB-6g/UsURT1yKFx5kU5ibbYnjJw/edit?utm_content=DAFGzjjB-6g&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton"><img style="border-radius: 50%;"/><br /><sub><b>Apresentação</b></sub></a><br /></td>
  </tr>
</table>

<h4 align="center">Status: Concluded ✔️</h4>

# Configuração inicial para seu contrato

### Setup NodeJS

- Startup and configuration demo project with NodeJS

### Rodar o aplicativo iniciado

```shell
npm start

npm run test
```

### Comandos do Git e NPM

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

## Instruções de Instalação e Utilização

###### Ambientes

- O contrato da Máquina de Vendas poderá ser testado através da plataforma [Remix IDE](https://remix.ethereum.org/#optimize=false&runs=200&evmVersion=null)
	
- Realizamos o deploy e disponibilizamos na rede de testes [Rinkeby Etherscan](https://rinkeby.etherscan.io/address/0x66ec5ba46c10930ad22fd03401796e485e55396c)

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
	
### Principais funcionalidades da nossa Vending Machine
	
* Utilizamos o mapping, por exemplo, fazendo referência entre o nosso `materials` 

~~~solidity
mapping(uint => Material) public materials;	
~~~

e nosso objeto em si
	
~~~solidity
struct Material
~~~
	
* Criamos os eventos dos diferentes momentos do nosso *Material*
	
~~~solidity
event CreatedMaterial
event SoldMaterial
event UpdateMaterial
~~~
	
* Temos nossa função de inventário, que cuida da criação e reabastecimento do estoque de produtos

~~~solidity
function inventory {
emit CreatedMaterial}
~~~

* Também temos a função de compra de material, na qual trata da transação e suas nuances
	
~~~solidity
function buyMaterial{
emit SoldMaterial}
~~~
	
* Assim como a função atualizar que podemos alterar o valor, o nome e a descrição do produto a venda na máquina

~~~solidity
function update{
emit UpdateMaterial}
~~~
	
* Uma outra função bacana é a getBalance pois retorna o balanço financeiro da máquina de vendas
	
~~~solidity
function getBalance	
~~~
	
* Em paralelo temos também a restock, funcionalidade na qual é responsável pelo reabastecimento de Ether na Machine
	
~~~solidity
function restockEther	
~~~
	
* E por último mas não menos importante, a função de saque para que o dono da Vending Machine possa sacar o saldo da mesma
	
~~~solidity
function withdraw	
~~~
	
## Técnicas e Tecnologias Utilizadas

<table>	
 <tr>
    <th>
      <a href="https://trello.com">
        <img alt="Trello Official Website" src="https://blog.saninternet.com/wp-content/uploads/2017/11/como-ser-mais-produtivo-trello-SECNET-868x488-1.jpg"
             width="200" height="106"/>
      </a>
    </th>
    <th>Organizamos nossas tarefas através da plataforma Trello</th>
  </tr>	
  <tr>
    <th>
      <a href="https://docs.soliditylang.org/en/v0.8.15/">
        <img alt="Solidity v0.8.15 homepage" src="https://avantrio.xyz/blog/wp-content/uploads/2020/02/solidity-nedir.png"
             width="200" height="82"/>
      </a>
    </th>
    <th>O smart contract foi desenvolvido em Solidity </th>
  </tr>
  <tr>
    <th>
      <a href="https://remix.ethereum.org/#optimize=false&runs=200&evmVersion=null">
        <img alt="Remix - Ethereum IDE" src="https://i.imgur.com/Nq1ImZp.jpg"
             width="200" height="80"/>
      </a>
    </th>
    <th>Realizamos todos os testes de execução na plataforma Remix IDE</th>
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
      <a href="https://code.visualstudio.com">
        <img alt="Visual Studio Code - Code Editing. Redefined" src="https://www.freecodecamp.org/news/content/images/size/w2000/2021/08/vscode.png"
             width="200" height="100"/>
      </a>
    </th>
    <th>Também usamos a famosa IDE Visual Studio Code para<br>
	nosso ambiente de testes e edição do contrato</th>
  </tr>
<tr>
    <th>
      <a href="https://trufflesuite.com/ganache/">
        <img alt="Truffle Suite - Ganache" src="https://trufflesuite.com/img/truffle-logo-light.svg"
             width="200" height="80"/>
      </a>
    </th>
    <th>O Truffle foi um framework utilizado para fazer alguns testes localmente</th>
  </tr>
  <tr>
    <th>
      <a href="https://rinkeby.etherscan.io">
        <img alt="Etherscan Rinkeby Testnet Network" src="https://etherscan.io/images/brandassets/etherscan-logo.png"
             width="190" height="60"/>
      </a>
    </th>
    <th>Para o deploy foi utilizada a rede de testes Rinkeby da Etherscan</th>
  </tr>
</table>
