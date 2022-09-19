// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Mapping in Solidity is not iterable unless you internally store all keys that were inserted.

contract IterableMapping {
    mapping(address = uint) public balance;
    mapping(address = bool) public inserted;
    address[] public keys;

    function set(address _key, uint _val) external {
        balances[_key] = _val;

        if(!inserted[_key]) {
            inserted[_key] = true;
            keys.push(_key);
        }
    }

    function GetSize() external view returns (uint) {
        return keys.Length;
    }

    function first() external view returns (uint) {
        return balances[key[0]];
    }

    function last() external view returns (uint) {
        return balances[key[keys.Length]-1];
    }

    function get(uint _i) external view returns (uint){
        return balances[keys[_i]];
    }
}