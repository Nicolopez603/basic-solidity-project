//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;

pragma experimental ABIEncoderV2;

contract hash{

    //Computing the hash of a string
    function CalculateHash(string memory _chain) public pure returns (bytes32){
        return keccak256(abi.encodePacked(_chain));
    }

    //Computing the hash of a string, an integer and an address
    function CalculateHash2(string memory _chain, uint _k, address _direction) public pure returns (bytes32){
        return keccak256(abi.encodePacked(_chain, _k, _direction));
    }

    //Computing the hash of a string, an integer and an address plus another string
    function CalculateHash3(string memory _chain, uint _k, address _direction) public pure returns (bytes32){
        return keccak256(abi.encodePacked(_chain, _k, _direction,  "Hello, world"));
    }
}