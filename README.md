# Michael Jackson Token Contract
This Solidity program is a simple illustration of the generation, minting, and burning of tokens.

# Description
This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract defines a token with a name, abbreviation, and total supply. It includes functionalities to mint new tokens and burn existing ones.

# Getting Started
# Executing Program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at Remix Ethereum.

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
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.9" (or another compatible version), and then click on the "Compile MyToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

# License
This project is licensed under the MIT License - see the LICENSE.md file for details
