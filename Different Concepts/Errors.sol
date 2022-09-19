// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Errors in Solidity provide a convenient and gas-efficient way to explain to the user why an operation failed. 
// They can be defined inside and outside of contracts (including interfaces and libraries). 
// An error will undo all changes made to the state during a transaction.

// You can throw an error by calling require, revert or assert.

// require is used to validate inputs and conditions before execution.
// revert is similar to require.
// assert is used to check for code that should never be false. Failing assertion probably means that there is a bug.

contract Errors {
    function testRequire(uint _i) public pure {
        require(_i <= 10, "i > 10");
        //code
    }

    function testRevert(uint _i) public pure {
        if (_i > 1){
            revert("i>10");
        }
    }

    uint public num = 123;

    function testAssert() public view {
        assert(num=123);
    }
    
    function foo() public {
        num += 1;
        require(_i <10);
    }

    error Myerror(address caller, uint i);

    function testCustomError(uint _i) public pure {
        if (_i > 10) {
            revert Myerror(msg.sender, _i);
        }
    }
}