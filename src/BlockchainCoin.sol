// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BlockchainCoin is ERC20 {
    address public owner;

    constructor() ERC20("BlockchainCoin", "GT") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    function giveSomeToMePlease() public {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    function setOwner(address newOwner) public {
        owner = newOwner;
    }
}
