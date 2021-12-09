//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;
pragma experimental ABIEncoderV2;


contract Mappings {

    //We declare a mapping to choose a number
    mapping (address => uint) public chooseNumber;

    function Number(uint _number) public {
        chooseNumber[msg.sender] = _number;
    }

    function choosingNumber() public view returns (uint){
        return chooseNumber[msg.sender];
    }

    //We declare a mapping that relates a person's name to their Amount of Money

    mapping (string => uint) AmountMoney;

    function Money(string memory _name, uint _amount) public{
        AmountMoney[_name] = _amount;
    }

    function consultarDinero(string memory _name) public view returns (uint){
        return AmountMoney[_name];
    }


    //Mapping example with a complex data type > struct
    struct Person{
        string name;
        uint age;
    }

    mapping(uint => Person) identifier;

    function people(uint _numberID, string memory _name, uint _age) public {
        identifier[_numberID] = Person(_name, _age); 
    }

    function viewPerson(uint _dni) public view returns(Person memory){
        return identifier[_dni];
    } 


}
