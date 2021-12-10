//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;

contract valuesReturn{

    //function to return us a greeting

    function greetings() public returns(string memory){
        return "greetings";
    }

    //function that calculates the result of a multiplication of two whole numbers

    function multiplication(uint _a, uint _b) public returns (uint){
        return _a*_b;
    } 

    //function returns true or false if the number is even or odd

    function even_odd(uint _a) public returns(bool){
        bool flag;

        if(_a%2==0){
            flag=true;
        }else{
            flag=false;
        }

        return flag;
    }


     // We carry out a function that returns the quotient, and the remainder of a division
     // In addition to a boolean variable that is true if the remainder is 0 and false otherwise
    function division(uint _a , uint _b) public returns (uint, uint, bool){
        uint q = _a/_b;
        uint r = _a%_b;
        bool multiple=false;
        if(r==0){
            multiple==true;
        }

        return (q,r,multiple);
    }


    // Practice for handling returned values

    function numbers() public returns (uint,uint, uint,uint,uint,uint){
        return(1,2,3,4,5,6);
    }

    //Multiple assignment


    function all_values() public{
        /// We declare the variables where the return values of the function are stored numbers
        uint a;
        uint b;
        uint c;
        uint d;
        uint e;
        uint f;
        //We perform multiple assignment
        (a,b,c,d,e,f)=numbers();
        
    }

    function last_value() public{
        (,,,,,uint last)=numbers();
    }

}