// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// You can access the video content in Turkish prepared by İTÜ Blockchain here: 
// https://www.youtube.com/watch?v=MzvzBp9l3y0&list=PLby2HXktGwN4Cof_6a8YwlMrboX8-hs73&index=14 

// There are 3 types of memory locations (data locations) in the EVM:

// storage: Stored on the blockchain.
// memory: Stored in a memory. Function is called and deleted as soon as the function is used as needed.
// calldata: Stored in the call (transaction) when calling the function (msg.data). It can only be read.
// When using reference types such as bytes, string, uint256[], struct in functions, it should be specified from which memory area these data will be taken.

// Data Locations- Storage, memory and calldata
// storage => variable is a state variable
// memory => data is loaded onto memory
// calldata => similar to memory but on functions

contract DataLocations {
    struct MyStruct{
        uint foo;
        string text;
    }

    mapping(address => MyStruct) public mystructs;

    function examples (uint[] calldata y, string calldata s) external return (uint[] memory) {
        MyStruct[msg.sender] = MyStruct({foo: 123, text:"bar"});

        MyStruct storage StoreStruct = myStructs[msg.sender]; // to update data
        StoreStruct.text = "foo";

        MyStruct memory MemoryStruct = myStructs[msg.sender]; // to read data
        MemoryStruct.foo = 456;

        _internal(y);

        uint[] memory memArr = new uint[] (3);
        memArr[0] = 234;
        return memArr;
    }

    function _internal(uint[] calldata y) private {
        uint x = y[0];
    }
}