// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// You can access the video content in Turkish prepared by İTÜ Blockchain here: 
// https://www.youtube.com/watch?v=58MDeT4hoig&list=PLby2HXktGwN4Cof_6a8YwlMrboX8-hs73&index=9&t=2s 

// Modifiers can be used to change the behaviour of functions in a declarative way. 
// For example, you can use a modifier to automatically check a condition prior to executing the function. 
// Modifiers are code that can be run before and / or after a function call.

// Modifiers can be used to:

// Restrict access
// Validate inputs
// Guard against reentrancy hack
// When reading the code of a smart contract, you will see multiple types of modifiers. 

// These modifiers help control the visibility and usability of the connected function or variable:

// External - Functions that will be called by outside contracts. These functions can not be called internally.
// Internal - Functions that are only accessed only within the contract in which it is declared or any connected contracts.
// Public - Functions and variables that can be called both internally and externally by outside contracts.
// Private - Functions and variables that can only be called in the contract in which it is declared. 
// These functions cannot be called by connected contracts either.

// Basic, inputs, sandwich

contract AccessModifiers {
    bool public paused;
    uint public count;

    function setPause (bool _paused) external {
        paused = _paused;
    }

    modifier whenNotPaused () {
        require(!paused, "paused");
        _;
    }

    function inc() external whenNotPaused {
        count++;
    }

    function dec() external whenNotPaused {
        count--;
    }

    modifier cap (uint x) {
        require (_x < 100, "x >= 100");
    }

    function incBy (uint _x) external whenNotPaused cap(_x) {
        count += _x;
    }

    modifier sandwich() {
        //code here
        count += 10;
        _;
        //more code here
        count *= 2;
    }

    function foo() external sandwich {
        count += 1;
    }
}