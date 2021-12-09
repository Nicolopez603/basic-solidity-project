//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;

pragma experimental ABIEncoderV2;

contract hash{

    //Computo del hash de un string
    function CalcularHash(string memory _cadena) public pure returns (bytes32){
        return keccak256(abi.encodePacked(_cadena));
    }

    //Computo del hash de un string, un entero y una direccion
    function CalcularHash2(string memory _cadena, uint _k, address _direccion) public pure returns (bytes32){
        return keccak256(abi.encodePacked(_cadena, _k, _direccion));
    }

    //Computo del hash de un string, un entero y una direccion mas otro string
    function CalcularHash3(string memory _cadena, uint _k, address _direccion) public pure returns (bytes32){
        return keccak256(abi.encodePacked(_cadena, _k, _direccion,  "Hello, world"));
    }
}