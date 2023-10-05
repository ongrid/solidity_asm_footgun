// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.21;

contract YulStorageManipulation {
    function getStor0() public view returns (uint256 result) {
        assembly {
            result := sload(0x00)
        }
    }

    function setStor0(uint256 newNumber) public {
        assembly {
            sstore(0x00, newNumber)
        }
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
