// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "./Token.sol";

contract dBank {
    Token private token;

    constructor(Token _token) {
        token = _token;
    }
}
