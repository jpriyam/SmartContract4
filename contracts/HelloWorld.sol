// SPDX-License-Identifier: MIT

pragma solidity 0.5.16;

contract HelloWorld {

    string public message;

    constructor (string memory _message) public{
        message = _message;
    }
    
    function sayHelloWorld() public view returns (string memory) {
        return message;
    }
    function setMessage(string memory _message) public payable {
        require(msg.value > 1 ether);
        message = _message;
    }
}