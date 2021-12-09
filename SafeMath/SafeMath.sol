//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;

library SafeMath{

    //Restas
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        if (b <= a) 
        return a - b;
    }

    //Sumas
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        assert(c >= a);
        return c;
    }

    //Multiplicacion
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if(a == 0){
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplicacion overflow");
        return c;
    }




}