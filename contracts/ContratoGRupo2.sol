// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract ContratoGrupo2 {
  address payable public owner;
  string public appName;
  uint public amountMaterial = 0;
  //mapping faz referência do materials com o objeto em si (struct: Material)
  mapping(uint => Material) public materials;
  mapping(address => uint256) public materialBalance;
  
  struct Material{
    uint idMaterial;
    string nameMaterial;
    string descriptionMaterial;
    uint priceMaterial;
    address payable owner;
    bool sold; 
  }

  event CreatedMaterial(
    uint idMaterial,
    string nameMaterial,
    string descriptionMaterial,
    uint priceMaterial,
    address payable owner,
    bool sold
  );

  event SoldMaterial (
    uint idMaterial,
    string nameMaterial,
    string descriptionMaterial,
    uint priceMaterial,
    address payable owner,
    bool sold
  );

  event UpdateMaterial (
    uint idMaterial,
    string nameMaterial,
    string descriptionMaterial,
    uint priceMaterial,
    address payable owner,
    bool updated
  );

  constructor() {
    appName = "dAPP Lar do concreto";
    owner = payable(msg.sender);   
  }

  // Função de estoque com a criação do produto e reabastecimento
  function inventory(string memory _nameMaterial, string memory _descriptionMaterial, uint _priceMaterial) public {
    // Verificação se o produto possui um nome válido
    require(bytes(_nameMaterial).length > 0, unicode"ERRO: Nome inválido, insira um nome válido.");

    //Verificação se o produto tem o preço válido
    require(_priceMaterial > 0, unicode"ERRO: Preço inválido, insira um valor maior que zero");

    // Para poder adicionar mais um produto na variável amountMaterial
    amountMaterial ++;

    // Criar um produto (add ao estoque)
    // Pedir pra prof explicar essa linha, o mapping e o msg.sender / [dentro de colchetes é o índice, materials é o array]
    // msg.sender quem está se conectando e usando o contrato no momento, como se fosse um this no JS.
    materials[amountMaterial] = Material(amountMaterial, _nameMaterial, _descriptionMaterial, _priceMaterial, payable(msg.sender), false);

    // Chamar o evento de criar o produto - o emit chama o evento
    emit CreatedMaterial(amountMaterial, _nameMaterial, _descriptionMaterial, _priceMaterial, payable(msg.sender), false);

  }
  // Função para a compra de material
  function buyMaterial(uint _idMaterial) public payable {
    // Armazenar os ids dos produtos em um array
    Material memory _material = materials[_idMaterial]; // [exemplo pratico do indice sendo usado para buscar o id do produto]

    // Setar o dono do produto, o vendedor será o dono do produto
    address payable _seller = _material.owner;

    
    // Verificação: se o produto possui um id válido   
    require(_material.idMaterial > 0 && _material.idMaterial <= amountMaterial, unicode"ERRO: id do material inválido.");
    
    //Verificação: se há dinheiro suficiente para realizar a transação
    require(msg.value >= _material.priceMaterial, unicode"ERRO: Não há dinheiro suficiente para a transação");

    //Verificação: se o produto já não foi vendido
    require(!_material.sold, unicode"ERRO: Esse produto já foi vendido.");

    //Verificação: comprador diferente do vendedor
    require(_seller != msg.sender, unicode"ERRO: Não é possível transferir para o mesmo endereço.");

    // Ação de transferir do owner para o comprador
    _material.owner = payable(msg.sender);

    // Setar que o produto foi vendido
    _material.sold = true;

    //Dúvida: não entendemos como isso aqui funciona R: o produto na venda está igualando ao produto armazenado no estoque, direcionando para tira-lo do armazenamento
    // Atualizar o estoque (depois ver se iremos colocar em outra função)
    materials[_idMaterial] = _material;

    //Enviar o pagamento para o vendedor. O vendedor recebe a transferência do comprador
    //A funcao transfer é pra transferir
    payable(_seller).transfer(msg.value);

    //Evento do produto vendido (colocamos como true, pois inicialmente ele era false)
    //Dúvida: porquê precisa do evento??? O que ele faz? Pq os nomes dos parametros sao os do struct? R: o evento de venda pega os atributos do produto em si.
    emit SoldMaterial(amountMaterial, _material.nameMaterial, _material.descriptionMaterial, _material.priceMaterial, payable(msg.sender), true);
    
  }
    function update(uint _idMaterial, string memory _nameMaterial, string memory _descriptionMaterial, uint _priceMaterial) public {

      materials[amountMaterial] = Material(_idMaterial, _nameMaterial, _descriptionMaterial, _priceMaterial, payable(msg.sender),false);
      
      emit UpdateMaterial(amountMaterial, _nameMaterial, _descriptionMaterial, _priceMaterial, payable(msg.sender), false);

    }


  //  function withdraw(uint _amount) external {
  //       require(address(this).balance >= _amount, unicode"ERRO: Não há ether o suficiente na máquina!");
  //       owner.transfer(_amount * 1 ether);
  //  }
   function withdraw(uint _amount) external {        
        require(address(this).balance >= _amount, unicode"ERRO: Não há ether o suficiente na máquina!");
        payable(owner).transfer(_amount);
   }







}
