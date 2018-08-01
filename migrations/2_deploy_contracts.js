var MyCoin = artifacts.require("MyCoin");
var owner = web3.eth.accounts[0];

module.exports = function(deployer) {
  // Deploy the MyCoin contract as our only task
  deployer.deploy(MyCoin, {from: owner});
};
