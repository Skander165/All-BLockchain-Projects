pragma solidity ^0.6.0;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';

interface IYDAI{
    
}

contract Wallet {   
    address admin;

    constructor() public {
        admin = msg.sender;
    }
}