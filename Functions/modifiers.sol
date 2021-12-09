//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;
pragma experimental ABIEncoderV2;

contract view_pure_payable{

    //Modificador de view (No modifica a los datos pero si permite acceder a ellos)

    string[] list_alumnos;

    function nuevo_alumno(string memory _alumno) public {
        list_alumnos.push(_alumno);
    }

    function ver_alumno(uint _posicion) public view returns(string memory){
        return list_alumnos[_posicion];
    }

    uint x=10;
    function sumarAx(uint _a) public view returns(uint){
        return x+_a;
    }

    //Modificador de pure (No accede a los datos)

    function Exponenciacion(uint _a, uint _b) public pure returns(uint){
        return _a**_b;
    }

    //Modificador de payable (Nos permite recibir ethers)

    mapping(address=>cartera) DineroCartera;

    struct cartera{
        string nombre_persona;
        address direccion_persona;
        uint dinero_persona;
    }

    function Pagar(string memory _nombrePersona, uint _cantidad) public payable{
        cartera memory mi_cartera;
        mi_cartera = cartera(_nombrePersona, msg.sender, _cantidad);
        DineroCartera[msg.sender]=mi_cartera;
    }

    function verSaldo() public view returns(cartera memory){
        return DineroCartera[msg.sender];
    }




}

