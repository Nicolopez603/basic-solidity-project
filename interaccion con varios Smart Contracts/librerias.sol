//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;

library Operaciones{
    
    function division(uint _num1, uint _num2) public pure returns(uint) {
        
        require(_num2>0, "No podemos dividir por 0");
        return _num1/_num2;
    }

    function multiplicacion (uint _num1, uint _num2) public pure returns (uint){
        if(_num1 == 0 || _num2 == 0){
            return 0;
        }else{
            return _num1*_num2;
        }
    }

}

contract calculos{
    //En este caso usamos el using porque la funcion esta en el mismo contrato, de lo contrario tenemos que importarla
    using Operaciones for uint;

    function calculo(uint _a, uint _b) public pure returns(uint, uint) {
        uint q = _a.division(_b);
        uint m = _a.multiplicacion(_b);
       return(q, m);
    }


}