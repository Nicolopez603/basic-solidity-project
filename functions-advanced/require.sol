//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;
pragma experimental ABIEncoderV2;



contract Require {

    // We implement a function that verifies the password is correct
    function password(string memory _pass) public pure returns(string memory){
        require(keccak256(abi.encodePacked(_pass))==keccak256(abi.encodePacked("12345")), "invalid password");
        return "correct password";
    } 

    //Function that allows us to pay

    //Time variable
    uint time = 0;

    uint public wallet = 0;

    function pay(uint _amount) public returns(uint){
        require(block.timestamp> time + 5 seconds,"You still can't pay");
        time = block.timestamp;
        wallet = wallet + _amount;
        return wallet;
    }


    //Funcion con una lista

    string [] names;

    function newName (string memory _name) public{
        for(uint i = 0; i <names.length; i++){
            require(keccak256(abi.encodePacked(_name))!=keccak256(abi.encodePacked(names[i])), "Is already on the list");
        }
        names.push(_name);
    }




}