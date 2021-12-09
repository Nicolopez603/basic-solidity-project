pragma solidity  >=0.4.0 <0.8.11;

contract operadores {

    //Operadores matematicos
    uint a = 40;
    uint b = 2;

    uint public suma = a + b;
    uint public resta = a - b;
    uint public multiplicacion = a * b;
    uint public division = a / b;
    uint public modulo = a % b;
    uint public exponenciacion = a ** b;

    //Comparamos enteros que nos devuelve numeros booleanos

    uint c = 4;
    uint d = 4;

    bool public test_1 = a > b;
    bool public test_2 = a < b;
    bool public test_3 = c == d;
    bool public test_4 = a == b;
    bool public test_5 = a >= b;
    bool public test_6 = a <= b;
    bool public test_7 = a != b;
    bool public test_8 = a > 32;

    //Operadores booleanos

    //Criterio de divisidibilidad entre 5: si el numero termina en 0 o 5

    function criterioDivisibilidad(uint _k) public pure returns(bool){
        uint ultima_cifra = _k%10;

       if((ultima_cifra == 0)||(ultima_cifra==5)){
           return true;
       }else{
           return false;
       }

    }

    function criterioDivisibilidadV2(uint _k) public pure returns(bool){
        uint ultima_cifra = _k%10;

       if((ultima_cifra !=0)||(ultima_cifra!=5)){
           return true;
       }else{
           return false;
       }

    }



}