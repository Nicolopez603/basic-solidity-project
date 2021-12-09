// Identificamos nuestra licencia
// SPDX-License-Identifier: MIT
pragma solidity >= 0.4.24 <0.8.11;
pragma experimental ABIEncoderV2;

contract public_private_internal{

    //Modificador public
    uint public mi_entero = 45;
    string public saludo = "hola, Mundo";
    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    //Modificador private
    uint private mi_entero_privado = 10;
    bool private flag = true;

    function test(uint _k) public {
        mi_entero_privado = _k;
    }


    //Modificador internal
    bytes32 internal hash = keccak256(abi.encodePacked(uint(2)));
    address internal direccion = 0x14723A09ACff6D2A60DcdF7aA4AFf308FDDC160C;


}