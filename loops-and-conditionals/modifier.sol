//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;

contract Modifier{

    //We implement a modifier that checks if the owner's address is correct

    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender==owner, "You do not have permissions to execute the function");
        _;
    }

    function example1() public onlyOwner(){
       // Code of the function for the owner
    }


    struct client{
        address direction;
        string name;
    }

    mapping(string => address) clients;

    function registerClient(string memory _name) public {
        clients[_name] = msg.sender;
    }

    modifier onlyClients(string memory _name){
        require(clients[_name] == msg.sender);
        _;
    }

    function example2(string memory _name) public onlyClients(_name){
        //Function logic for clients
    }

    //driving example

    modifier majorAge(uint _ageMinimum, uint _ageUser){
        require(_ageUser >= _ageMinimum);
        _;
    }

    function driving(uint _age) public majorAge(18, _age){
       // Code to execute for drivers older than age
    }

}