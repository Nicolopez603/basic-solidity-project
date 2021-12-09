//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;

contract causasBeneficas{
    
    
    struct Causa{
        uint Id;
        string name;
        uint precio_objetivo;
        uint cantidad_recaudada;
    }

    uint contador_causas= 0;
    mapping (string => Causa) causas;

    function nuevaCausa(string memory _name, uint _precio_objetivo) public payable{
        contador_causas = contador_causas++;
        causas[_name] = Causa(contador_causas, _name, _precio_objetivo, 0);
    }

    //Esta funcion nos va a devolver un bool indicando si llegamos a la cantidad recaudada o no

    function objetivoCumplido(string memory _name, uint _donar)private returns(bool){
        bool flag = false;
        Causa memory causa = causas[_name];
        if(causa.precio_objetivo >= (causa.cantidad_recaudada +_donar)){
            flag=true;
        }
        return flag;

    }

    //Esta funcion nos permite donar a una causa
    function donar(string memory _name, uint _cantidad) public returns(bool){
        bool aceptar_donacion = true;
        if(objetivoCumplido(_name, _cantidad)){
            causas[_name].cantidad_recaudada = causas[_name].cantidad_recaudada+_cantidad;
        }else{
            aceptar_donacion = false;
        }
        return aceptar_donacion;
    }

    //Esta funcion nos dice si hemos llegado al precio objetivo
    function comprobar_causa(string memory _name) public view returns(bool, uint){
        
        bool limite_alcanzado = false;
        Causa memory causa = causas[_name];

        if(causa.cantidad_recaudada>=causa.precio_objetivo){
            limite_alcanzado = true;
        }

        return (limite_alcanzado, causa.cantidad_recaudada);

    }


}