// Identificamos nuestra licencia
// SPDX-License-Identifier: MIT
pragma solidity >= 0.4.24 <0.8.11;

contract unidades_tiempo{


    //Unidades de tiempo
    uint public tiempo_actual = block.timestamp;
    uint public sesenta_segundos = 60 seconds;
    uint public un_minuto = 1 minutes;
    uint public dos_horas = 2 hours;
    uint public cincuenta_dias = 50 days;
    uint public una_semana = 1 weeks;

    function MasSegundos() public view returns(uint){
        return block.timestamp + 50 seconds;
    }

    function MasHoras() public view returns(uint){
        return block.timestamp + 5 hours;
    }

    function MasDias() public view returns(uint){
        return block.timestamp + 5 days;
    }

    function MasSemanas() public view returns(uint){
        return block.timestamp + 5 weeks;
    }


}