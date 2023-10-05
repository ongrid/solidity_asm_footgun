// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.21;

import {Test, console2} from "forge-std/Test.sol";
import {YulStorageManipulation} from "../src/YulStorageManipulation.sol";

contract YulStorageManipulationTest is Test {
    YulStorageManipulation public y;

    function setUp() public {
        y = new YulStorageManipulation();
        y.setStor0(255);
    }

    function test_Increment() public {
        y.incrementStor0();
        assertEq(y.getStor0(), 256);
    }

    function test_Decrement() public {
        y.decrementStor0();
        assertEq(y.getStor0(), 254);
    }

    function testFuzz_setStor0(uint256 x) public {
        y.setStor0(x);
        assertEq(y.getStor0(), x);
    }
}
