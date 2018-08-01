// Version of Solidity compiler this program was written for
pragma solidity ^0.4.19;

import 'zeppelin-solidity/contracts/token/ERC20/StandardToken.sol';


// A faucet for ERC20 token MAC
contract Faucet {

  StandardToken public MyCoin;
  address public MACOwner;

  // Faucet constructor, provide the address of MyCoin contract and
  // the owner address we will be approved to transferFrom
  constructor(address _MyCoin, address _MACOwner) public {

    // Initialize the MyCoin from the address provided
    MyCoin = StandardToken(_MyCoin);
    MACOwner = _MACOwner;
  }

  function withdraw(uint withdraw_amount) public {

    // Limit withdrawal amount to 10 MAC
    require(withdraw_amount <= 1000);

    // Use the transferFrom function of MyCoin
    MyCoin.transferFrom(MACOwner, msg.sender, withdraw_amount);
  }

  // REJECT any incoming ether
  function () public payable { revert(); }

}
