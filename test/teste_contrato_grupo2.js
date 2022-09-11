const ContratoGrupo2 = artifacts.require("ContratoGrupo2");


contract("ContratoGrupo2", (accounts) => {
  let instance;

  beforeEach('Deve fazer o setup da instancia do contrato', async () => {
  instance = await ContratoGrupo2.deployed();
  });

	// estou testando se o contrato foi deployado
	it("Deve voltar verdadeiro se foi deployado", async () => {
		await ContratoGrupo2.deployed();
		return assert.isTrue(true);
	});


});






