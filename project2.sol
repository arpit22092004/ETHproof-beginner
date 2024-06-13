// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract MyToken {
    // public variables
    bytes32 public Name = "Michael_Jackson";
    bytes32 public Symbol = "MJ";
    uint256 public totalSupply = 34;

    // mapping variable
    mapping(address => uint256) public balance;

    // mint function
    function minting(address _recipient, uint256 _value) public{
        totalSupply += _value;
        balance[_recipient] += _value;
    }

    // burn function
    function burning(uint256 _value) public {
        require(balance[msg.sender] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balance[msg.sender] -= _value;
    }
}
