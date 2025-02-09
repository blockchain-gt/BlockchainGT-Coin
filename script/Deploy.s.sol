// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {Script} from "forge-std/Script.sol";
import {BlockchainCoin} from "../src/BlockchainCoin.sol";

contract DeployScript is Script {
    function setUp() public {}

    function run() public returns (BlockchainCoin) {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        // Deploy the contract
        BlockchainCoin token = new BlockchainCoin();

        vm.stopBroadcast();
        return token;
    }
}
