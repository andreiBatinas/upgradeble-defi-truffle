// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Token is ERC20, Ownable {
    constructor() ERC20("Decentralized Bank Currency", "DBC") {}

    function mint(address account, uint256 amount) public onlyOwner {
        require(amount > 0, "Amount must be higher than 0");
        _mint(account, amount);
    }
}
