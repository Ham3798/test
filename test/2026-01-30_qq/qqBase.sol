// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import "src/shared/BaseTest.sol";
import "src/shared/FeatureTypes.sol";
import "src/shared/interfaces.sol";

/*
@Protocol: qq
@Date: 2026-01-30
@Attacker: 0x62c405481237337E155aEE3063E9C6e3Cb95b1be
@Target: 0x5100251d115A8595D74559d18C91B9A03Ba07a60
@TxHash: 0x784fd760e57f4cb68efad7cecee077ddde97824f4f31380ef9e16a34cba1f105
@ChainId: 42161
*/

abstract contract qqBase is BaseTest {
    function setUp() public virtual {
        vm.createSelectFork("arbitrum", 426723948);
        target = 0x5100251d115A8595D74559d18C91B9A03Ba07a60;
    }
}
