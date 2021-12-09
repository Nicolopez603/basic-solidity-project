//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;

contract sentencia_if{

    //Numero ganador

    function probarSuerte(uint _a) public pure returns(bool){
        
        bool ganador;
        if(_a == 1000){
            ganador = true;
        }else{
            ganador = false;
        }
        return ganador;
    }

    //Otro metodo de hacerlo >
    /* 
    bool ganador = false;
    if(_a == 1000){
        ganador = true;
       } 
       return ganador;
    */

    //Calculamos el valor absoluto de un numero
    function valorAbsoluto(int _b) public pure returns(uint){
        uint valor_absoluto_numero;
        if(_b <0){
            valor_absoluto_numero = uint(-_b);
        }else{
            valor_absoluto_numero = uint(_b);
        }
        return valor_absoluto_numero;
    }

    //Devolvemos true si el numero introducido es par y tiene tres cifras

    function par_tres_cifras(uint _c) public pure returns (bool){
        bool flag;
        if((_c%2==0)&&(_c>=100)&&(_c<999)){
            flag = true;
        }else{
            flag = false;
        }
        return flag;
    }

    //Si las condiciones son compuestas se pone un () adentro del () > quedaria asi: (()&&())


    //Sistema de Votacion > Solo habra tres candidatos: Nicolas, Pepe, Juan
    //De lo contratio nos saldra un mensaje de error

    function votar(string memory _candidato)public pure returns(string memory){

        string memory mensaje;

        if(keccak256(abi.encodePacked(_candidato))==keccak256(abi.encodePacked("Nicolas"))){
            mensaje = "Haz votado correctamente a Nicolas";
        }else{
        if(keccak256(abi.encodePacked(_candidato))==keccak256(abi.encodePacked("Pepe"))){
            mensaje = "Haz votado correctamente a Pepe";
        }else{
            if(keccak256(abi.encodePacked(_candidato))==keccak256(abi.encodePacked("Juan"))){
            mensaje = "Haz votado correctamente a Juan";
        }else{
            mensaje = "Haz votado a un candidato que no esta postulado en la lista, vuelva a votar nuevamente por favor.";
        }
    }
}
        return mensaje;
    }
}
