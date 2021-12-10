//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;
pragma experimental ABIEncoderV2;

contract view_pure_payable{

    //View modifier (Does not modify the data but does allow access to it)
    string[] list_students;

    function nuevo_student(string memory _student) public {
        list_students.push(_student);
    }

    function view_student(uint _posicion) public view returns(string memory){
        return list_students[_posicion];
    }

    uint x=10;
    function addX(uint _a) public view returns(uint){
        return x+_a;
    }

    // modifier of pure (does not access the data)
    function Exponenciacion(uint _a, uint _b) public pure returns(uint){
        return _a**_b;
    }

    //Payable modifier (allows us to receive ethers)
    mapping(address=>wallet) Moneywallet;

    struct wallet{
        string name_person;
        address direction_person;
        uint Money_person;
    }

    function Pay(string memory _namePerson, uint _amount) public payable{
        wallet memory my_wallet;
        my_wallet = wallet(_namePerson, msg.sender, _amount);
        Moneywallet[msg.sender]=my_wallet;
    }

    function viewBalance() public view returns(wallet memory){
        return Moneywallet[msg.sender];
    }




}

