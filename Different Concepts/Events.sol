// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Events {
    event Log(string message, uint val);
    // up to 3 parameters can be indexed
    event IndexedLog(address indexed sender, uint val);

    function example() external { // not view or pure, it is transactional
        emit Log("foo", 1234);
        emit IndexedLog(msg.sender, 789);
    }

    event Message (address indexed _from, address indexed _to, string message);

    function sendMessage(address _to, string calldata message) external {
        emit Message(msg.sender, _to, message);
    }
}