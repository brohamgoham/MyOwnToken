// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract MohamCoin is ERC20 {

    constructor(uint256 initialSupply) public ERC20("Moham", "MHM") {
        _mint(msg.sender, initialSupply);

    }
}