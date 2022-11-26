pragma solidity ^0.8;

import './Ship.sol';

contract MyShip is Ship {

    struct Pos {
        uint x;
        uint y;
    }
   
    Pos[4] pos;
    uint index = 0;

    function update(uint x, uint y) public virtual override {

    }

    function fire() public virtual override returns (uint, uint) {
        return(pos[0].x, pos[0].y);
    }

    function place(uint width, uint height) public virtual override returns (uint, uint) {
        
        pos[index] = Pos((53 * (height-5) + 8) % width, (111 * (width/3) + 10) % height);
        return (pos[index].x, pos[index++].y);
    }

}
