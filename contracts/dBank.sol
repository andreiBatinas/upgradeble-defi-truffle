// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "./Token.sol";

contract dBank {
    Token private token;

    mapping(address => uint256) public etherBalanceOf;

    constructor(Token _token) {
        token = _token;
    }

    function deposit() public payable {
        require(msg.value >= 0.01 ether);
        etherBalanceOf[msg.sender] = etherBalanceOf[msg.sender] + msg.value;
    }
}
