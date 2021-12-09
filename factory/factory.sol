//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;
pragma experimental ABIEncoderV2;

contract SmartContract1 {

    //Store Factory information
    mapping(address => address) public MyContractPersonal;

    function Factory() public {
        address address_new_contract = address(new SmartContract2(msg.sender));
        MyContractPersonal[msg.sender] = address_new_contract;
    }
}
    contract SmartContract2 {
        address public owner;
        
        constructor(address _direction) public {
            owner = _direction;
        }


}
