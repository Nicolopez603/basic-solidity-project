// Identificamos nuestra licencia
// SPDX-License-Identifier: MIT
pragma solidity >= 0.4.24 <0.8.11;

contract Arrays{


    //Array de enteros de longitud fija 5
    uint[5] public array_enteros;

    //Array de strings de longitud fija 15
    string[15] array_string;

    //Array de enteros de 32 bits con 7 posiciones
    uint32[7] array_enteros_32_bits;

    //Array de enteros de longitud fija 5 <- inicializado
    uint[5] array_enteros_1 = [1, 2, 3];

    //Array dinamico de numeros enteros
    uint[] array_dinamico_enteros;

    //Array dinamico con tipo de dato complejo

    struct Persona{
        string nombre;
        uint edad;
    }

    Persona [] public array_dinamico_personas;

    //Para poder trabajar con el array hacemos un function
    //Los push solo se pueden usar en arrays dinamicos
    function modificar_array(string memory _nombre, uint _edad) public{
        array_dinamico_personas.push(Persona(_nombre, _edad));
        array_enteros_1[3]=56;
    }

    uint public test = array_enteros_1[2];

}