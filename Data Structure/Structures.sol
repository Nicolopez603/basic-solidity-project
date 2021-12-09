//Identify our license
// SPDX-License-Identifier: MIT
//Specify the version
pragma solidity >= 0.4.24 <0.8.11;

contract Structures{

    //Customer making a payment from a website
    struct client{
        uint id;
        string name;
        string dni;
        string mail;
        uint phone_number;
        uint credit_number;
        uint secret_number;
    }

    //We declare a variable of type client
    client client_1 = client(1,"Nicolas","42081285", "Nicolas@structures.com", 6541234, 123456789, 1234);


    //Products of an e-commerce like "Amazon"
    struct product{
        uint code_product;
        string name;
        uint price;
        string description;
    }

    //We declare a variable of type product
    product product_1 = product(849081089, "phone", 12, "an l1nux brand phone");


    //Cooperative project of ONG'S to help in various causes
    struct ONG {
       address ong;
       string name;
    }

    //We declare a variable of type ONG
    ONG caritas = ONG(0x14723A09ACff6D2A60DcdF7aA4AFf308FDDC160C,"caritas");


    struct Cause{
        uint id;
        string name;
        uint price;
        string caracteristics;
    }

    //We declare a variable of type Cause
    Cause Cause_1 = Cause(5, "Heart medicines", 520000, "Obtaining medicines for the heart through beneficial work");
    


}