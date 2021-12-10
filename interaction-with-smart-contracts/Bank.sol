//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;

contract Bank{


    //We define a complex data type - client
    struct client {
        string _name;
        address direction;
        uint balance;
    }

    //Mapping that relates the client's name to the client data type

    mapping(string => client) clients;

    //Function that allows us to register a new client
    function newclient(string memory _name) public {
        clients[_name] = client(_name, msg.sender, 0);
    }
}

contract Bank2{

}


contract Bank3{

}