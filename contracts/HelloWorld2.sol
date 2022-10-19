// SPDX-License-Identifier: MIT

pragma solidity 0.5.16;

contract HelloWorldPermanent {

    string public message;

    constructor (string memory _message) public {
        message = _message;
    }
    
}