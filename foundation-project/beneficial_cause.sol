//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;

contract Beneficialcauses{
    
    
    struct Cause{
        uint Id;
        string name;
        uint target_price;
        uint amount_raised;
    }

    uint counter_causes = 0;
    mapping (string => Cause) causes;

    function newCause(string memory _name, uint _target_price) public payable{
        counter_causes = counter_causes++;
        causes[_name] = Cause(counter_causes, _name, _target_price, 0);
    }

    //This function will return a bool indicating if we reach the amount collected or not

    function objectiveFulfilled(string memory _name, uint _donate)private returns(bool){
        bool flag = false;
        Cause memory cause = causes[_name];
        if(cause.target_price >= (cause.amount_raised +_donate)){
            flag=true;
        }
        return flag;

    }

    //This feature allows us to donate to a cause
    function donate(string memory _name, uint _amount) public returns(bool){
        bool accept_donation = true;
        if(objectiveFulfilled(_name, _amount)){
            causes[_name].amount_raised = causes[_name].amount_raised+_amount;
        }else{
            accept_donation = false;
        }
        return accept_donation;
    }

    //This function tells us if we have reached the target price
    function checkCause(string memory _name) public view returns(bool, uint){
        
        bool limit_reached = false;
        Cause memory cause = causes[_name];

        if(cause.amount_raised>=cause.target_price){
            limit_reached = true;
        }
        return (limit_reached, cause.amount_raised);

    }


}