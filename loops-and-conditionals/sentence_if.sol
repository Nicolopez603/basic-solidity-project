//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;

contract sentence_if{

    //Winning number

    function tryLuck(uint _a) public pure returns(bool){
        
        bool winner;
        if(_a == 1000){
            winner = true;
        }else{
            winner = false;
        }
        return winner;
    }

    //Otro metodo de hacerlo >
    /* 
    bool winner = false;
    if(_a == 1000){
        winner = true;
       } 
       return winner;
    */

    //We calculate the absolute value of a number
    function absoluteValue(int _b) public pure returns(uint){
        uint absolute_value_number;
        if(_b <0){
            absolute_value_number = uint(-_b);
        }else{
            absolute_value_number = uint(_b);
        }
        return absolute_value_number;
    }

    //We return true if the entered number is even and has three digits

    function pair_three_digits(uint _c) public pure returns (bool){
        bool flag;
        if((_c%2==0)&&(_c>=100)&&(_c<999)){
            flag = true;
        }else{
            flag = false;
        }
        return flag;
    }


    // If the conditions are compound, put a () inside the ()> it would look like this: (() && ())


     // Voting System> There will only be three candidates: Nicolas, Pepe, Juan
     // Otherwise we will get an error message

    function vote(string memory _candidate)public pure returns(string memory){

        string memory message;

        if(keccak256(abi.encodePacked(_candidate))==keccak256(abi.encodePacked("Nicolas"))){
            message = "You have correctly voted Nicolas";
        }else{
        if(keccak256(abi.encodePacked(_candidate))==keccak256(abi.encodePacked("Pepe"))){
            message = "You have voted correctly for Pepe";
        }else{
            if(keccak256(abi.encodePacked(_candidate))==keccak256(abi.encodePacked("Juan"))){
            message = "You have correctly voted Juan";
        }else{
            message = "You have voted for a candidate who is not on the list, please vote again. ";
        }
    }
}
        return message;
    }
}
