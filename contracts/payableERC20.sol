// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BBToken is ERC20, Ownable {
    constructor() ERC20("BB Token", "BBT") {
        payable(msg.sender);
    }

    uint ratio = 10000;

    function mint() public payable{
        uint amount = msg.value * ratio;
        require(msg.value >= 0.01 ether,"not enough ether sent!!");
        _mint(msg.sender, amount);
    }
}