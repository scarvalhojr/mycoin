var MyCoin = artifacts.require("MyCoin");
var Faucet = artifacts.require("Faucet");
var owner = web3.eth.accounts[0];

module.exports = function(deployer) {
  // Deploy the Faucet contract as our only task passing the address of MyCoin
  // and the address of the owner of all the MAC who will approve Faucet
  deployer.deploy(Faucet, MyCoin.address, owner);
};
