//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;

library SafeMath{

    //Subtraction
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        if (b <= a) 
        return a - b;
    }

    //Sum
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        assert(c >= a);
        return c;
    }

    //Multiplication
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if(a == 0){
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");
        return c;
    }




}