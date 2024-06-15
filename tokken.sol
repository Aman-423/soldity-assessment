// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
    // Public variables
    string public name;     // Token name
    string public symbol;   // Token symbol
    uint public totalSupply;    // Total token supply

    // Mapping of addresses to their balances
    mapping(address => uint) public balances;

    // Constructor to initialize the token with initial supply
    constructor(string memory _name, string memory _symbol, uint _initialSupply) {
        name = _name;
        symbol = _symbol;
        totalSupply = _initialSupply;

        // Assign initial supply to the contract deployer
        balances[msg.sender] = _initialSupply;
    }

    // Function to mint new tokens and increase total supply
    function mint(address _to, uint _amount) public {
        // Increase recipient's balance
        balances[_to] += _amount;
        // Increase total supply
        totalSupply += _amount;
    }

    // Function to burn tokens with a safety check
    function burn(address _from, uint _amount) public {
        // Ensure sender has enough balance to burn
        require(balances[_from] >= _amount, "Insufficient balance to burn");
        // Deduct tokens from sender's balance
        balances[_from] -= _amount;
        // Decrease total supply
        totalSupply -= _amount;
    }
}
