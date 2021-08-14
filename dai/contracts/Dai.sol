//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;


import '@openzeppelin/contracts/token/ERC20/ERC20.sol';
contract Dai is ERC20 {
    constructor() ERC20('DAI Stablecoin', 'DAI') {
    }

    function faucet (address recipient, uint amount) external {
        _mint(recipient, amount);
    }
}
