// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import "./qqBase.sol";

contract ReplayTest is qqBase {
    function testReplay() public recordMetrics("REPLAY") {
        beneficiary = 0x62c405481237337E155aEE3063E9C6e3Cb95b1be;
        vm.startPrank(0x62c405481237337E155aEE3063E9C6e3Cb95b1be);
        (bool success, ) = 0x5100251d115A8595D74559d18C91B9A03Ba07a60.call(hex"7805333e000000000000000000000000af88d065e77c8cc2239327c5edb3a432268e58310000000000000000000000005a5c1410dc7a41d453c86a6276ceafd0ce050709");
        require(success, "Replay failed");
        vm.stopPrank();
    }
}
