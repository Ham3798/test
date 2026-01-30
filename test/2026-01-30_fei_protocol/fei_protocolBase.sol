// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import "src/shared/BaseTest.sol";
import "src/shared/FeatureTypes.sol";
import "src/shared/interfaces.sol";

/*
@Protocol: fei protocol
@Date: 2026-01-30
@Attacker: 0xA443E0529F0Cf1F4e2d9Cb9E2f4E9C5C7a1B485c
@Target: 0xBF12F78a3AC52a2af4e054E05E867Afc55d49D91
@TxHash: 0x10429eaeb479f9149854e4aeb978a35ac02d9688f6e22371712b3878c63a64ab
@ChainId: 8453
*/

abstract contract fei_protocolBase is BaseTest {
    function setUp() public virtual {
        vm.createSelectFork("base", 41475478);
        target = 0xBF12F78a3AC52a2af4e054E05E867Afc55d49D91;
    }
}
