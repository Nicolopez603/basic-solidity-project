//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;


//Define the contract
contract bucle_while{

    //Suma de los numeros impares menores a 100
    function suma_impares() public pure returns (uint){
        uint suma = 0;
        uint contador = 1;

        while(contador <=100){
            if(contador%2!=0){
                suma = suma + contador;
            }
            contador++;
        }
        return suma;
    }

    //Esperar 5 segundos

    uint tiempo;
    function fijarTiempo() public {
        tiempo = block.timestamp;
    }

    function espera() public view returns (bool){
        while(block.timestamp < tiempo + 5){
            return false;
        }
        return true;
    }

    //Devolver el siguiente numero primo
    function siguientePrimo(uint num) public pure returns (uint){

        uint contador = num + 1;
        while(true){
            
            uint aux = 2;
            bool primo = true;
            while(aux < contador){
                if(contador%aux==0){
                    primo = false;
                    break;
                }
                aux++;
            } 
            if(primo == true){
                break; 
            }
            contador ++;
        }
        return contador;
    }


}