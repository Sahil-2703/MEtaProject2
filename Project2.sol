// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract ErrorHandling{
    uint public a;

    function requireFunc(uint _a) public {
        a=_a;
        require(_a>=10, "Your value is not greater than 10");
    }

    function revertFunc(uint _a) public{
        a=_a;
        if(_a<=10){
            revert("Your value is less than 10");
        }
    } 

    function assertFunc(uint _a) public{
        a=_a;
        assert(_a>=5);
    }
}
