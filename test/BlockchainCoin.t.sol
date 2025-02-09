// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {Test} from "forge-std/Test.sol";
import {BlockchainCoin} from "../src/BlockchainCoin.sol";

contract BlockchainCoinTest is Test {
    BlockchainCoin public token;

    function setUp() public {
        token = new BlockchainCoin();
    }

    function testInitialSupply() public {
        assertEq(token.totalSupply(), 1000000 * 10 ** token.decimals());
    }

    function testGiveSomeToMePlease() public {
        uint256 initialBalance = token.balanceOf(address(this));
        token.giveSomeToMePlease();
        assertEq(token.balanceOf(address(this)), initialBalance + 1000000 * 10 ** token.decimals());
    }
}
