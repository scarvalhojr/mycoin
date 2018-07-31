var MyCoin = artifacts.require("MyCoin");

module.exports = function(deployer) {
  // Deploy the MyCoin contract as our only task
  deployer.deploy(MyCoin);
};
