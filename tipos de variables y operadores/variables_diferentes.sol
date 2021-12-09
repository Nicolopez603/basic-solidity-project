// Identificamos nuestra licencia
// SPDX-License-Identifier: MIT
pragma solidity >= 0.4.24 <0.8.11;

pragma experimental ABIEncoderV2;

    contract mas_variables {

    //Variables de tipo string (Cadenas de texto)
    string  mi_primer_auto;
    string public saludo = "Hola, como estas?";
    string public string_vacio = "";

    //Variables de tipo boolean
    bool mi_primer_booleano;
    bool public flag_true = true;
    bool public flag_false = false;

    //Variables de tipo bytes
    bytes32 mi_primer_byte;
    bytes31 public mi_segundo_byte = "32";
    string public nombre = "Nicolas Lopez";
    bytes32 public hash = keccak256(abi.encodePacked(nombre));

    bytes4 public identificador;
    function ejemploBytes4() public{
        identificador = msg.sig;
    }

    //Variables de tipo address

    address mi_primera_direccion;
    address public direccion_local_1 = 0x0A098Eda01Ce92ff4A4CCb7A4fFFb5A43EBC70DC;
    address public direccion_local_2 = 0x14723A09ACff6D2A60DcdF7aA4AFf308FDDC160C;

}