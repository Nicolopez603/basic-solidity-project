//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;

contract Arrays{


    //Array of integers of fixed length 5
    uint[5] public array_integers;

    //Array of integers of fixed length 15
    string[15] array_string;

    //32-bit integer array with 7 positions
    uint32[7] array_integers_32_bits;

    //Fixed length integer array 5 <- initialized
    uint[5] array_integer_1 = [1, 2, 3];

    //Dynamic array of integers
    uint[] array_dinamic_integers;

    //Dynamic array with complex data type
    struct Person{
        string name;
        uint age;
    }

    Person [] public array_dinamic_persons;

    //To be able to work with the array we make a function 
    //Pushes can only be used in dynamic arrays
    function modificar_array(string memory _name, uint _age) public{
        array_dinamic_persons.push(Person(_name, _age));
        array_integer_1[3]=56;
    }

    uint public test = array_integer_1[2];

}