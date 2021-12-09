// Identificamos nuestra licencia
// SPDX-License-Identifier: MIT
pragma solidity >= 0.4.24 <0.8.11;

contract function_globals{

    //function msg.sender <- devuelve el remitente de la llamada actual
    function MsgSender() public view returns(address){
        return msg.sender;
    }

    //function BlockTimeStamp <- nos devuelve el tiempo en segundos siguiendo el tiempo universal de unix
    function BlockTimeStamp() public view returns(uint){
        return block.timestamp;
    }
    //function block.coinbase <- devuelve la direccion del minero actual que esta procesando el bloque
    function BlockCoinBase() public view returns(address){
        return block.coinbase;
    }

    //function block.difficulty <- nos devuelve la dificultad del bloque actual
    function BlockDifficulty() public view returns(uint){
        return block.difficulty;
    }

    //function block.number <- nos devuelve un entero con el numero de bloque actual
    function BlockNumber() public view returns(uint){
        return block.number;
    }

    //function msg.sig <- nos devuelve 4 bytes que eran el identificador de la funcion 
      function MsgSig() public view returns(bytes4){
        return msg.sig;
    }

    //function tx.gasprice <- nos devuelve el precio de la transaccion del gas
    function txGasPrice() public view returns(uint){
        return tx.gasprice;
    }
}