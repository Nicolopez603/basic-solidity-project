//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;
import "./SafeMath.sol";


//We implement a contract using SafeMath
contract safeCalculations{

    //We must declare for which data we will use the library
    using SafeMath for uint;

    //Safe sum function
    function suma(uint _a, uint _b) public pure returns(uint){
        return _a.add(_b);
    }

    //Subtraction function
    function resta(uint _a, uint _b) public pure returns(uint){
        return _a.sub(_b);
    }

    //Multiplication function
    function multiplicacion(uint _a, uint _b) public pure returns(uint){
        return _a.mul(_b);
    }

}