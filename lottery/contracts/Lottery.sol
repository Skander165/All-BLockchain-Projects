//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Lottery {
    address public manager;
    //address[] public players;
    mapping(uint => address) players;

    modifier onlyManager {
        require(msg.sender == manager, "Not A Manager");
        _;
    }
    modifier NotManager {
        require(msg.sender != manager, "The Manager Cannot Enter");
        _;
    }

    constructor() {
        manager = msg.sender;
    }

    function enter() public payable NotManager {
        require(msg.value >= 0.1);
    }

}