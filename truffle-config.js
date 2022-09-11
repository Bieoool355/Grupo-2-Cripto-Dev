const HDWalletProvider = require('@truffle/hdwallet-provider')
require('dotenv').config()
const {PRIVATE_KEY_1, PRIVATE_KEY_2} = process.env;

module.exports = {
 
  networks: {
    development: {
    host: "127.0.0.1",     
    port: 7545,            
    network_id: "*",        
    },
    rinkeby:{
      provider: () => new HDWalletProvider(
        /* {
        privateKeys: PRIVATE_KEY_1,        
        providerOrUrl: "https://rinkeby.infura.io/v3/70a7e35a0351486c87a8f7a089cb06fc",
        numberOfAddresses: 1
        } */
        process.env.PRIVATE_KEY_1,  `https://rinkeby.infura.io/v3/70a7e35a0351486c87a8f7a089cb06fc`
      ),
      network_id: 4,
      gas: 5500000,
      confirmations: 2,
      timeoutBlocks: 200,
      skipDryRun: true
    }
        
  },  
  mocha: {
    
  },  
  compilers: {
    solc: {
      version: "pragma",  //"0.8.16",  
      
    }
  },
};
