// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract ContratoGrupo2 {
  address payable public owner;
  string public appName;
  uint public amountMaterial = 0;
  
  mapping(uint => Material) public materials; 
  
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

  function inventory(string memory _nameMaterial, string memory _descriptionMaterial, uint _priceMaterial) public {
    
    require(bytes(_nameMaterial).length > 0, unicode"ERRO: Nome inválido, insira um nome válido.");

    require(_priceMaterial > 0, unicode"ERRO: Preço inválido, insira um valor maior que zero");

    amountMaterial ++;

<<<<<<< HEAD
=======
    // Criar um produto (add ao estoque)
>>>>>>> c6596408dfa3b848db6b2b49aea560d13e13bec6
    materials[amountMaterial] = Material(amountMaterial, _nameMaterial, _descriptionMaterial, _priceMaterial, payable(msg.sender), false);

    
    emit CreatedMaterial(amountMaterial, _nameMaterial, _descriptionMaterial, _priceMaterial, payable(msg.sender), false);

  }
    
  function buyMaterial(uint _idMaterial) public payable {
<<<<<<< HEAD
    
=======
    // Armazenar os ids dos produtos em um array
>>>>>>> c6596408dfa3b848db6b2b49aea560d13e13bec6
    Material memory _material = materials[_idMaterial]; 

    address payable _seller = _material.owner;

<<<<<<< HEAD
=======
    // Verificação: se o produto possui um id válido   
>>>>>>> c6596408dfa3b848db6b2b49aea560d13e13bec6
    require(_material.idMaterial > 0 && _material.idMaterial <= amountMaterial, unicode"ERRO: id do material inválido.");
  
    require(msg.value >= _material.priceMaterial, unicode"ERRO: Não há dinheiro suficiente para a transação");

    require(!_material.sold, unicode"ERRO: Esse produto já foi vendido.");
    
    require(_seller != msg.sender, unicode"ERRO: Não é possível transferir para o mesmo endereço.");
    
    _material.owner = payable(msg.sender);
    
    _material.sold = true;
<<<<<<< HEAD
    
    materials[_idMaterial] = _material;
    
    payable(_seller).transfer(msg.value);
     
    emit SoldMaterial(amountMaterial, _material.nameMaterial, _material.descriptionMaterial, _material.priceMaterial, payable(msg.sender), true);
    
  }
  function update(uint _idMaterial, string memory _nameMaterial, string memory _descriptionMaterial, uint _priceMaterial) public {

    materials[amountMaterial] = Material(_idMaterial, _nameMaterial, _descriptionMaterial, _priceMaterial, payable(msg.sender),false);
    
    emit UpdateMaterial(amountMaterial, _nameMaterial, _descriptionMaterial, _priceMaterial, payable(msg.sender), false);

  }

  function withdraw(uint _amount) external {        
      require(address(this).balance >= _amount, unicode"ERRO: Não há ether o suficiente na máquina!");
      payable(owner).transfer(_amount);
  }

  function restokEther() public payable {
      require(msg.sender == owner, unicode"ERRO: Somente o owner pode reabastecer."
      );
      require(msg.value >= 1 wei, unicode"ERRO: O valor mínimo para reabastecer é de 1 wei"
      );
  }

=======

    // Atualizar o estoque
    materials[_idMaterial] = _material;

    //Enviar o pagamento para o vendedor. O vendedor recebe a transferência do comprador
    payable(_seller).transfer(msg.value);

    //Evento do produto vendido
    emit SoldMaterial(amountMaterial, _material.nameMaterial, _material.descriptionMaterial, _material.priceMaterial, payable(msg.sender), true);
    
  }
    //Função para atualizar o valor do produto
    function update(uint _idMaterial, string memory _nameMaterial, string memory _descriptionMaterial, uint _priceMaterial) public {

      materials[amountMaterial] = Material(_idMaterial, _nameMaterial, _descriptionMaterial, _priceMaterial, payable(msg.sender),false);
      
      emit UpdateMaterial(amountMaterial, _nameMaterial, _descriptionMaterial, _priceMaterial, payable(msg.sender), false);

    }

  //  function withdraw(uint _amount) external {
  //       require(address(this).balance >= _amount, unicode"ERRO: Não há ether o suficiente na máquina!");
  //       owner.transfer(_amount * 1 ether);
  //  }

   //Função para que o owner possa sacar o dinheiro da máquina
   function withdraw(uint _amount) external {        
        require(address(this).balance >= _amount, unicode"ERRO: Não há ether o suficiente na máquina!");
        payable(owner).transfer(_amount);
   }
>>>>>>> c6596408dfa3b848db6b2b49aea560d13e13bec6

}
