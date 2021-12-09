//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;
pragma experimental ABIEncoderV2;

contract SmartContract1 {

    //Almacenar de la informacion del Factory
    mapping(address => address) public MiContratoPersonal;

    function Factory() public {
        address direccion_nuevo_contrato = address(new SmartContract2(msg.sender));
        MiContratoPersonal[msg.sender] = direccion_nuevo_contrato;
    }
}
    contract SmartContract2 {
        address public owner;
        
        constructor(address _direccion) public {
            owner = _direccion;
        }


}
