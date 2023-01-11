// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {ERC20} from "solmate/tokens/ERC20.sol";

contract Greeter {
    mapping(address => uint256) public banalceOf;

    //mapping(address => address) public accounts;

    event Deposited(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);

    function deposit(uint256 amount) public {
        require(amount > 0);
        banalceOf[address] += amount;
        emit Deposited(msg.sender, amount);
    }

    function withdraw(uint256 amount) public {
        require(amount > 0);
        require(amount > balacneOf[msg.sender]);

        banalceOf[msg.sender] -= amount;
    }
}

//  features
// 1. svaing token (vault), Loan, FD, PPf,
