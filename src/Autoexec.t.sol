pragma solidity ^0.6.7;

import "ds-test/test.sol";

import "./Autoexec.sol";

contract AutoexecTest is DSTest {
    Autoexec autoexec;

    function setUp() public {
        autoexec = new Autoexec();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
