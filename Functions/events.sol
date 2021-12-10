//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;
pragma experimental ABIEncoderV2;

contract Events {
    //We declare the events to be used
    event name_event1(string _namePerson);
    event name_event2(string _namePerson, uint _agePersona);
    event name_event3(string, uint, address, bytes32);
    event abortmission();

    function emitEvent1(string memory _namePerson) public{
        emit name_event1(_namePerson);
    }

    function emitEvent2(string memory _namePerson, uint _age) public{
        emit name_event2(_namePerson, _age);
    }

    function emitEvent3(string memory _namePerson, uint _age, address, bytes32) public{

        bytes32 hash_id = keccak256(abi.encodePacked(_namePerson, _age,msg.sender));
        emit name_event3(_namePerson, _age, msg.sender, hash_id);
    }

    function emitEvent4() public{
        emit abortmission();
    }

}