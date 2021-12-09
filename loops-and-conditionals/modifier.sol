//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;

contract Modifier{

    //Implementamos un modifier que nos compruebe si la direccion del propietario es la correcta

    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    modifier soloPropietario(){
        require(msg.sender==owner, "No tienes permisos para ejecutar la funcion");
        _;
    }

    function ejemplo1() public soloPropietario(){
        //Codigo de la funcion para el propietario
    }


    struct client{
        address direccion;
        string name;
    }

    mapping(string => address) clientes;

    function altaCliente(string memory _name) public {
        clientes[_name] = msg.sender;
    }

    modifier soloClientes(string memory _name){
        require(clientes[_name] == msg.sender);
        _;
    }

    function ejemplo2(string memory _name) public soloClientes(_name){
        //Logica de la funcion para los clientes
    }

    //Ejemplo de conduccion

    modifier mayorEdad(uint _edadMinima, uint _edadUsuario){
        require(_edadUsuario >= _edadMinima);
        _;
    }

    function conducir(uint _edad) public mayorEdad(18, _edad){
        //Codigo a ejecutar para los conductores mayores de edad
    }

}