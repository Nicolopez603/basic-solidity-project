//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;
pragma solidity >= 0.4.24 <0.8.11;

//We define our first contract
contract FirstContract {

    address owner;

    constructor() public {
        owner = msg.sender;
    }
}