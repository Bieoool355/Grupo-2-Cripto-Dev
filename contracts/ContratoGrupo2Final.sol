// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract ContratoGrupo2Final {
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

    require(msg.sender == owner, unicode"ERRO: Somente o ownere pode inserir um produto.");

    amountMaterial ++;

    materials[amountMaterial] = Material(amountMaterial, _nameMaterial, _descriptionMaterial, _priceMaterial, payable(msg.sender), false);

    emit CreatedMaterial(amountMaterial, _nameMaterial, _descriptionMaterial, _priceMaterial, payable(msg.sender), false);

  }
    
  function buyMaterial(uint _idMaterial) public payable {
    
    Material memory _material = materials[_idMaterial];    

    require(_material.idMaterial > 0 && _material.idMaterial <= amountMaterial, unicode"ERRO: id do material inválido.");
  
    require(msg.value >= _material.priceMaterial, unicode"ERRO: Não há dinheiro suficiente para a transação");

    require(!_material.sold, unicode"ERRO: Esse produto já foi vendido.");  
      
    _material.owner = payable(msg.sender);
    
    _material.sold = true;
    
    materials[_idMaterial] = _material;
     
    emit SoldMaterial(amountMaterial, _material.nameMaterial, _material.descriptionMaterial, _material.priceMaterial, payable(msg.sender), true);
    
  }

  function getBalance() public view returns (uint256) {
    return address(this).balance;
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
      require(msg.value >= 1 wei, unicode"ERRO: Valor inválido, o mínimo para reabastecer é de 1 wei"
      );
  }


}
