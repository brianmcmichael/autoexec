// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.6.12;

import "ds-test/test.sol";

import "./Autoexec.sol";

interface Hevm {
    function warp(uint256) external;
}

contract AutoexecTest is DSTest {
    Autoexec autoexec;

    Hevm hevm;
    // CHEAT_CODE = 0x7109709ECfa91a80626fF3989D68f67F5b1DD12D
    bytes20 constant CHEAT_CODE =
        bytes20(uint160(uint256(keccak256('hevm cheat code'))));

    function setUp() public {
        hevm = Hevm(address(CHEAT_CODE));
        autoexec = new Autoexec();
    }

    function testAutoExecDoesNotRevert() public {
        autoexec.bat();
        assertEq(uint(1),uint(1));
    }

    function testAutoExecTwiceDoesNotRevert() public {
        autoexec.bat();
        autoexec.bat();
        assertEq(uint(1),uint(1));
    }

    function testAutoExecCost() public {
        autoexec.bat();
    }
}
