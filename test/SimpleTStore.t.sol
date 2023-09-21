// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/SimpleTStore.sol";

contract TestSimpleTStore is Test {
    SimpleTStore c;

    function setUp() public {
        c = new SimpleTStore();
    }

    function testEmptyRead() public {
        assertEq(c.tload(0), 0);
    }

    function testStore() public {
        c.tstore(0, 1);
        assertEq(c.tload(0), 1);
    }
}
