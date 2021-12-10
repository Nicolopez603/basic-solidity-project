// Identificamos nuestra licencia
// SPDX-License-Identifier: MIT
pragma solidity >= 0.4.24 <0.8.11;

contract function_globals{

    //function msg.sender <- returns the sender of the current call
    function MsgSender() public view returns(address){
        return msg.sender;
    }

    //function BlockTimeStamp <- it returns the time in seconds following the universal time of unix
    function BlockTimeStamp() public view returns(uint){
        return block.timestamp;
    }
    //function block.coinbase <- returns the address of the current miner that is processing the block
    function BlockCoinBase() public view returns(address){
        return block.coinbase;
    }

    //function block.difficulty <- returns us the difficulty of the current block
    function BlockDifficulty() public view returns(uint){
        return block.difficulty;
    }

    //function block.number <- returns an integer with the current block number
    function BlockNumber() public view returns(uint){
        return block.number;
    }

    //function msg.sig <- It returns 4 bytes that were the identifier of the function
      function MsgSig() public view returns(bytes4){
        return msg.sig;
    }

    //function tx.gasprice <- Returns us the price of the gas transaction
    function txGasPrice() public view returns(uint){
        return tx.gasprice;
    }
}