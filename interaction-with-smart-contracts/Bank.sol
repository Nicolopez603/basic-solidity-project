//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;

contract Banco{


    //Definimos un tipo de dato complejo - cliente
    struct cliente {
        string _nombre;
        address direccion;
        uint saldo;
    }

    //Mapping que nos relaciona el nombre del cliente con el tipo de dato cliente

    mapping(string => cliente) clientes;

    //Funcion que nos permita dar de alta un nuevo cliente
    function nuevoCliente(string memory _nombre) public {
        clientes[_nombre] = cliente(_nombre, msg.sender, 0);
    }
}

contract Banco2{

}


contract Banco3{

}