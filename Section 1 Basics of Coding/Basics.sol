// This file is for basic programming
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Basics
 * @dev Store & retrieve value in a variable
 */
contract Basics {

    uint256 index;
 //   uint256 firstFib = 1;
 //   uint256 secFib = 1;
    uint256 previous = 1;
    uint256 doublePrev = 1;
    uint256 endValue;

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function getFib(uint256 num) public {

        if (num == 1) {
            previous = 1;
        }

        if (num == 2) {
            previous = 1;
        }

    uint256 i;
    uint256 counterOne;
    uint256 counterTwo;

        for (i = num; i > 2; i = i - 1) {   

            counterOne = previous;
            counterTwo = doublePrev;

            previous = counterOne + counterTwo;
            doublePrev = counterOne;
        }

        endValue = previous;
        previous = 1;
        doublePrev = 1;

    }


    function getFib2(uint256 x) public returns (uint256){

        if (x == 1) {
            endValue = 1;
        }

        else if (x == 2) {
            endValue = 1;
        }
        else {
            endValue = getFib2(x - 1) + getFib2(x - 2);
        }



        return endValue;


    } 




    

    function retrieve() public view returns (uint256){
        return endValue;
    }


    

    
}