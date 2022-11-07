pragma solidity ^0.8;

import './Ship.sol';

contract MyShip is Ship {

    function update(uint x, uint y) public virtual override {

    }

    function fire() public virtual override returns (uint, uint) {

    }

    function place(uint width, uint height) public virtual override returns (uint, uint) {
        return (53 * (height-5) + 8 % width, 111 * (width/3) + 10 % height);
    }

}
