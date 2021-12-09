// Identificamos nuestra licencia
// SPDX-License-Identifier: MIT
pragma solidity >= 0.4.24 <0.8.11;

//Definimos nuestro primer contrato
contract FirstContract {

    address owner;

    constructor() public {
        owner = msg.sender;
    }
}