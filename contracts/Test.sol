pragma solidity ^0.5.0;

contract Test {
    address _owner;

    constructor() public{
        _owner = msg.sender;
    }
}
