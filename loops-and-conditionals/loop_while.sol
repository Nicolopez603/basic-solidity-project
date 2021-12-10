//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;


//Define the contract
contract bucle_while{

    //Sum of odd numbers less than 100
    function sum_odd() public pure returns (uint){
        uint sum = 0;
        uint counter = 1;

        while(counter <=100){
            if(counter%2!=0){
                sum = sum + counter;
            }
            counter++;
        }
        return sum;
    }

    //wait 5 seconds

    uint time;
    function setTime() public {
        time = block.timestamp;
    }

    function wait() public view returns (bool){
        while(block.timestamp < time + 5){
            return false;
        }
        return true;
    }

    //Return the next prime number
    function nextPrime(uint num) public pure returns (uint){

        uint counter = num + 1;
        while(true){
            
            uint aux = 2;
            bool prime = true;
            while(aux < counter){
                if(counter%aux==0){
                    prime = false;
                    break;
                }
                aux++;
            } 
            if(prime == true){
                break; 
            }
            counter ++;
        }
        return counter;
    }


}