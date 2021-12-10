//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;

contract loop_for{
   
    //Sum of the first 100 numbers from the entered number
    function sum(uint _number) public pure returns(uint) {
        uint Sum = 0;
        for(uint i= _number; i<(100+_number); i++){
            Sum = Sum +i;
        }
        return Sum;
    }   



    //Dynamic array of directions
    address[] directions;

    //Add an address to the array
    function association() public {
        directions.push(msg.sender);
    }
    //check if the address is in the array of directions
    function checkAssociation() public view returns(bool, address){

        for(uint i=0; i< directions.length; i++){
            if(msg.sender == directions[i]){
                return (true,directions[i]);
            }
        }


    }


    // Double for: Sum of the first 10 factorials
    //Example: n! = n*(n-1)*(n-2)
    //3! = 3*2*1 etc

    function SumFactorial() public pure returns(uint){
        uint Sum = 0;
        for(uint i =1; i<=10; i++){
            uint factorial = 1;
            for(uint j = 2; j<=i; j++){
                factorial = factorial *j;
            }

            Sum = Sum + factorial;
        }
        return Sum;
    }


}
