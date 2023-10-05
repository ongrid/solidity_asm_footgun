// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.21;

contract YulStorageManipulation {
    uint256 public stor0;

    function setStor0(uint256 newNumber) public {
        stor0 = newNumber;
    }

    function incrementStor0() public {
        assembly {
            sstore(0x00, add(sload(0x00), 1))
        }
    }

    function decrementStor0() public {
        assembly {
            sstore(0x00, sub(sload(0x00), 1))
        }
    }
}
