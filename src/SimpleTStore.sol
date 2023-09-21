// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.20;

contract SimpleTStore {
    function tstore(uint key, uint value) external {
        assembly {
            tstore(key, value)
        }
    }
    function tload(uint key) external view returns (uint value) {
        assembly {
            value := tload(key)
        }
    }
}
