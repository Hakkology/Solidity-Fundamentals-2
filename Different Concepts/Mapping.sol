// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// watch ITU Blockchain vid:
// https://www.youtube.com/watch?v=aZDdyhfesEc&list=PLby2HXktGwN4Cof_6a8YwlMrboX8-hs73&index=8&ab_channel=ITUBlockchain

// Hash Table or Dİctionary
// Mappings are mostly used to associate the unique Ethereum address with the associated value type.

// Maps are created with the syntax mapping (keyType => valueType).
// The keyType can be any built-in value type, bytes, string, or any contract.
// valueType can be any type including another mapping or an array.
// Mappings are not iterable.
// Mappings can be counted so that we can know how many values are stored in mapping.

contract Mapping {
    mapping(address => uint) public balances;
    mapping(address => mapping(address => bool)) public isFriend;

    function examples () external {
        balances[msg.sender]= 123;
        uint bal = balances[msg.sender];
        uint bal2 = balances[address(1)]; //0

        balances[msg.sender] += 456; // 123 + 456 = 579

        delete balance[msg.sender]; // 0

        isFriend[msg.sender][address(this)] = true;
    }
}