//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;

contract Comida{


    struct plato{
        string nombre;
        string ingredientes;
        uint tiempo;
    }
    
    //Declaramos un array dinamico de platos
    plato[] public platos;

    //Relacionamos con un mapping el nombre del plato con sus ingredientes
    mapping(string => string ) ingredientes;

    //Funcion que nos permite dar de alta un nuevo plato
    function NuevoPlato(string memory _nombre, string memory _ingredientes,uint _tiempo) internal{
        platos.push(plato(_nombre, _ingredientes, _tiempo));
        ingredientes[_nombre] = _ingredientes;
    }

    function Ingredientes(string memory _nombre) internal view returns(string memory){
        return ingredientes[_nombre];
    }
        
}


contract Sandwich is Comida{

    function sandwich(string memory _ingredientes, uint _tiempo) external{
        NuevoPlato("Sandwich", _ingredientes, _tiempo);
    }

    function verIngredientes() external view returns (string memory){
        return Ingredientes("Sandwich");
    }


}