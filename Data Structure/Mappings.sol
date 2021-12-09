//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;
pragma experimental ABIEncoderV2;


contract Mappings {

    //Declaramos un mapping para elegir un numero
    mapping (address => uint) public chooseNumber;

    function Number(uint _number) public {
        chooseNumber[msg.sender] = _number;
    }

    function choosingNumber() public view returns (uint){
        return chooseNumber[msg.sender];
    }

    //Declaramos un mapping que relaciona el nombre de una persona con su cantidad de dinero

    mapping (string => uint) cantidadDinero;

    function Dinero(string memory _nombre, uint _cantidad) public{
        cantidadDinero[_nombre] = _cantidad;
    }

    function consultarDinero(string memory _nombre) public view returns (uint){
        return cantidadDinero[_nombre];
    }


    //Ejemplo de mapping con un tipo de dato complejo >  struct 
    struct Persona{
        string name;
        uint age;
    }

    mapping(uint => Persona) identificador;

    function personas(uint _numberDni, string memory _name, uint _age) public {
        identificador[_numberDni] = Persona(_name, _age); 
    }

    function visualizarPersona(uint _dni) public view returns(Persona memory){
        return identificador[_dni];
    } 


}
