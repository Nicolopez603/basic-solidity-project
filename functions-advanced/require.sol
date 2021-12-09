//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;
pragma experimental ABIEncoderV2;



contract Requiere {

    //Implementamos una funcion que nos verifique la contraseña es correcta
    function password(string memory _pass) public pure returns(string memory){
        require(keccak256(abi.encodePacked(_pass))==keccak256(abi.encodePacked("12345")), "invalid password");
        return "password correct";
    } 

    //Funcion que nos permita pagar 

    //Variable de tiempo
    uint tiempo = 0;

    uint public cartera = 0;

    function pagar(uint _cantidad) public returns(uint){
        require(block.timestamp> tiempo + 5 seconds,"Aun no puedes pagar");
        tiempo = block.timestamp;
        cartera = cartera + _cantidad;
        return cartera;
    }


    //Funcion con una lista

    string [] nombres;

    function nuevoNombre (string memory _nombre) public{
        for(uint i = 0; i <nombres.length; i++){
            require(keccak256(abi.encodePacked(_nombre))!=keccak256(abi.encodePacked(nombres[i])), "Ya esta en la lista");
        }
        nombres.push(_nombre);
    }




}