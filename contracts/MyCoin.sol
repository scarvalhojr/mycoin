pragma solidity ^0.4.21;

import 'zeppelin-solidity/contracts/token/ERC20/StandardToken.sol';

contract MyCoin is StandardToken {
    string public constant name = 'My Awesome Coin';
    string public constant symbol = 'MAC';
    uint8 public constant decimals = 2;
    uint constant _initial_supply = 2100000000;

    constructor() public {
        totalSupply_ = _initial_supply;
        balances[msg.sender] = _initial_supply;
        emit Transfer(address(0), msg.sender, _initial_supply);
    }
}
