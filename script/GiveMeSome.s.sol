// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {Script} from "forge-std/Script.sol";
import {BlockchainCoin} from "../src/BlockchainCoin.sol";

contract GiveMe is Script {
    // Replace this with your deployed contract address
    address constant DEPLOYED_CONTRACT = 0xD7763dd99AEAeFfE42488f44633D06A08E0935DC; // Replace this!

    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        BlockchainCoin token = BlockchainCoin(DEPLOYED_CONTRACT);
        token.giveSomeToMePlease();

        vm.stopBroadcast();
    }
}
