//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;
//import "./Bank.sol";
import {Bank, Bank2, Bank3} from "./Bank.sol";

contract Client is Bank{

    function registerClient(string memory _name) public {
        newclient(_name);
    }


    function depositMoney(string memory _name, uint _amount) public {
        clients[_name].balance = clients[_name].balance + _amount;

    }

    function withDrawals(string memory _name, uint _amount) public returns (bool) {
     bool flag = true;
     if(int(clients[_name].balance)-int(_amount)>=0){
        clients[_name].balance = clients[_name].balance - _amount;
        flag = false;
     }else {
        flag = false;
     }
     return flag;
    }
    
function checkMoney(string memory _name) public view returns (uint){
    return clients[_name].balance;
}

}
