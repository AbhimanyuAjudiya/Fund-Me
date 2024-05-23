// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.8;

import {Script, console} from "../lib/forge-std/src/Script.sol";
import {FundMe} from "../src/FundMe.sol";

contract DeployFundMe is Script {
    function setUp() public {}

    function run() external returns (FundMe){
        // vm.broadcast();
        vm.startBroadcast();
        FundMe fundMe = new FundMe(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        vm.stopBroadcast();
        return fundMe;
    }
}
