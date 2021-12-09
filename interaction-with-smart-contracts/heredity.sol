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

contract Cliente is Banco {

    function altaCliente(string memory _nombre) public {
        nuevoCliente(_nombre);
    }


    function IngresarDinero(string memory _nombre, uint _cantidad) public {
        clientes[_nombre].saldo = clientes[_nombre].saldo + _cantidad;

    }

    function RetirarDinero(string memory _nombre, uint _cantidad) public returns (bool) {
     bool flag = true;
     if(int(clientes[_nombre].saldo)-int(_cantidad)>=0){
        clientes[_nombre].saldo = clientes[_nombre].saldo - _cantidad;
        flag = false;
     }else {
        flag = false;
     }
     return flag;
    }
    
function ConsultarDinero(string memory _nombre) public view returns (uint){
    return clientes[_nombre].saldo;
}

}




