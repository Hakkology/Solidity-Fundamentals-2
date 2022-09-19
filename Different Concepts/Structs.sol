// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// You can access the video content in Turkish prepared by İTÜ Blockchain here:
// https://www.youtube.com/watch?v=lV_QtWkp3MY&list=PLby2HXktGwN4Cof_6a8YwlMrboX8-hs73&index=7&t=2s 

// Structs are a collection of variables and work the same way that objects do in Javascript. 
// You can declare a struct to have multiple properties and once you create a new struct, they will also have the same properties.

// Structs in Solidity allow you to create more complicated data types that have multiple properties. 
// You can define your own type by creating a struct.

contract Structs {
    struct Car{
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public CarsbyOwner;

    function examples () external {
        Car memory toyota = Car ("Toyota", 1990, msg.sender);
        Car memory lambo = Car ({model: "Lamborghini", year:1980, owner:msg.sender});
        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2010;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        cars.push(Car("Ferrari", 2020, msg.sender));

        Car storage _car = cars[0];
        _car.year = 1999;
        delete _car.owner;

        delete cars[1];
    }
}