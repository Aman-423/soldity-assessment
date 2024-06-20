# soldity-assessment
SPDX-License-Identifier: This line specifies the license under which the contract is published.

Pragma Directive: pragma solidity ^0.8.0; specifies that the contract should be compiled with a Solidity compiler version 0.8.0 or newer.

Contract MyToken:

Variables:

1.name: Public variable representing the name of the token.
2.symbol: Public variable representing the symbol of the token.
3.totalSupply: Public variable holding the total supply of tokens.
4.balances: A mapping where each address maps to its token balance.


Constructor:

Initializes the contract with the token's name, symbol, and an initial supply _initialSupply.
Assigns the initial supply to the contract deployer (msg.sender).


Functions:

mint(address _to, uint _amount): Allows the contract owner to mint _amount tokens and assign them to address _to. Increases both _to's balance and the totalSupply.
burn(address _from, uint _amount): Allows an address _from to burn _amount of their tokens, reducing both their balance and the totalSupply. Includes a safety check to ensure the sender has enough tokens to burn.



Key Points
Token Attributes: The contract manages basic token attributes such as name, symbol, and total supply.
Balances Mapping: Uses a mapping to track token balances for each address.
Constructor: Initializes the contract with an initial supply and assigns all tokens to the deployer.
Minting: Provides a function to mint new tokens, increasing the total supply.
Burning: Provides a function to burn tokens, decreasing the total supply with a balance check to prevent burning more tokens than owned.
This contract serves as a foundational example for creating an ERC-20-like token on the Ethereum blockchain, showcasing basic functionalities like initialization, balance management, minting, and burning.
