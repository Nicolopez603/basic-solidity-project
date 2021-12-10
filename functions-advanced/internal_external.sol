//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;

contract Food{


    struct plate{
        string name;
        string ingredients;
        uint time;
    }
    
    //We declare a dynamic array of plates
    plate[] public plates;

    //We relate the name of the dish with its ingredients with a mapping
    mapping(string => string ) ingredients;

    //Function that allows us to register a new plate
    function Nuevoplate(string memory _name, string memory _ingredients,uint _time) internal{
        plates.push(plate(_name, _ingredients, _time));
        ingredients[_name] = _ingredients;
    }

    function Ingredients(string memory _name) internal view returns(string memory){
        return ingredients[_name];
    }
        
}


contract Sandwich is Food{

    function sandwich(string memory _ingredients, uint _time) external{
        Nuevoplate("Sandwich", _ingredients, _time);
    }

    function seeingredients() external view returns (string memory){
        return Ingredients("Sandwich");
    }


}