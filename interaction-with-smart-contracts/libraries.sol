//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;

library Operations{
    
    function division(uint _num1, uint _num2) public pure returns(uint) {
        
        require(_num2>0, "We can't divide 0");
        return _num1/_num2;
    }

    function multiplication (uint _num1, uint _num2) public pure returns (uint){
        if(_num1 == 0 || _num2 == 0){
            return 0;
        }else{
            return _num1*_num2;
        }
    }

}

contract calculations{
    //In this case we use the using because the function is in the same contract, otherwise we have to import it
    using Operations for uint;

    function calculation(uint _a, uint _b) public pure returns(uint, uint) {
        uint q = _a.division(_b);
        uint m = _a.multiplication(_b);
       return(q, m);
    }


}