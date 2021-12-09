// Identificamos nuestra licencia
// SPDX-License-Identifier: MIT
pragma solidity >= 0.4.24 <0.8.11;

contract Ejemplo_Enumeraciones{

    //Enumeracion de interruptor
    enum estado {ON, OFF}

    //Variable de tipo enum
    estado state;

    function encender() public {
        state = estado.ON;
    }

    function FijarEstado(uint _k) public {
        state = estado(_k);
    }

    function Estado() public view returns (estado){
        return state;
    }

    //Enumeracion de direccion

    enum direcciones {ARRIBA, ABAJO, DERECHA, IZQUIERDA}

    //Variable de tipo enum(direcciones)

    direcciones direccion;

    function Arriba() public {
        direccion = direcciones.ARRIBA;
    }

    function Abajo() public {
        direccion = direcciones.ABAJO;
    }

    function Izquierda() public {
        direccion = direcciones.IZQUIERDA;
    }

    function Derecha() public {
        direccion = direcciones.DERECHA;
    }

    function FijarDirecciones(uint _k) public {
        direccion = direcciones(_k);
    }

    function DevuelveValorDirecciones() public view returns(direcciones){
    return direccion;} 


}