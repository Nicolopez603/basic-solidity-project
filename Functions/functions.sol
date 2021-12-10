//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;
pragma experimental ABIEncoderV2;

contract functions {

    //Add within an array of addresses, the address of the person running call the function
    address[] public directions;

    function nuevadirection() public {
        directions.push(msg.sender);
    }

    //Compute the hash of the data provided as a parameter

    bytes32 public hash;

    /*function hash(string memory _datos) public{
        hash = keccak256(abi.encodePacked(_datos));
    }*/

    //We declare a complex data type > food
    struct food {
        string name;
        string ingredients;
    }

    //We declare a complex data type > food

    food public hamburger;

    function hamburgers(string memory _ingredients) public{
        hamburger = food ("hamburger", _ingredients);
    }


    //We declare a complex data type > student
    struct student {
        string name;
        address direction;
        uint age;
    }

    bytes32 public hash_id_student;
    //We are going to calculate the hash of the student

    function hashIdstudent(string memory _name, address _direction, uint _age) private{
        hash_id_student = keccak256(abi.encodePacked(_name, _direction, _age));
    }

    //We save with the public function within a list the students
    student[] public list;
    mapping (string => bytes32) students;

    function nuevostudent(string memory _name, address _direction, uint _age) public {
        list.push(student(_name, msg.sender, _age));
        hashIdstudent(_name, msg.sender, _age);
        students[_name] = hash_id_student;
    }


}