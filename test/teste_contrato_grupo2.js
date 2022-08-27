const TesteContratoGrupo2 = artifacts.require("TesteContratoGrupo2");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("TesteContratoGrupo2", function (/* accounts */) {
  it("should assert true", async function () {
    await TesteContratoGrupo2.deployed();
    return assert.isTrue(true);
  });
});
