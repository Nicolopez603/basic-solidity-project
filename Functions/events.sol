//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;
pragma experimental ABIEncoderV2;

contract Events {
    //Declaramos los eventos a utilizar
    event name_event1(string _nombrePersona);
    event name_event2(string _nombrePersona, uint _edadPersona);
    event name_event3(string, uint, address, bytes32);
    event abortmission();

    function emitirEvent1(string memory _nombrePersona) public{
        emit name_event1(_nombrePersona);
    }

    function emitirEvent2(string memory _nombrePersona, uint _edad) public{
        emit name_event2(_nombrePersona, _edad);
    }

    function emitirEvent3(string memory _nombrePersona, uint _edad, address, bytes32) public{

        bytes32 hash_id = keccak256(abi.encodePacked(_nombrePersona, _edad,msg.sender));
        emit name_event3(_nombrePersona, _edad, msg.sender, hash_id);
    }

    function emitirEvent4() public{
        emit abortmission();
    }

}