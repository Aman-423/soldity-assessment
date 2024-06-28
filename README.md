# Smart Contract

This Solidity program is a smart contract token program in Solidity refers to the implementation of a digital token on a blockchain platform, typically Ethereum.These tokens are programmable assets that can represent various types of assets, rights, or utilities.

# Discription

1. Your contract will have public variables that store the details about your coin (Token Name, Token     Abbrv., Total Supply)
2. 2. Your contract will have a mapping of addresses to balances (address => uint)
3. You will have a mint function that takes two parameters: an address and a value. 
   The function then increases the total supply by that number and increases the balance 
   of the “sender” address by that amount
4. Your contract will have a burn function, which works the opposite of the mint function, as it will     destroy tokens. It will take an address and value just like the mint functions. It will then deduct    the value from the total supply and from the balance of the “sender”.
5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater    than or equal to the amount that is supposed to be burned.
6. pragma solidity ^0.8.18;
   This line specifies the version of the Solidity compiler to use for this contract. Here, it uses       version 0.8.18.


# Getting Started

# Executing program
To run this program, I am using Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.
Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension. Copy and paste the following code into the file:

```javascript
pragma solidity ^0.8.0;
contract MyToken 
{
    string public name;    
    string public symbol;  
    uint public totalSupply;
mapping(address => uint) public balances;
constructor(string memory _name, string memory _symbol, uint _initialSupply) 
{
        name = _name;
        symbol = _symbol;
        totalSupply = _initialSupply;
balances[msg.sender] = _initialSupply;
}
function mint(address _to, uint _amount) public
{
        balances[_to] += _amount;
        totalSupply += _amount;
}
function burn(address _from, uint _amount) public 
{
        require(balances[_from] >= _amount, "Insufficient balance to burn");
        balances[_from] -= _amount;
        totalSupply -= _amount;
}
}

```

 
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile Tokken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Tokken" contract from the dropdown menu, and then click on the "Deploy" button.

Intially we have taken the 1000 unit of tokken ,so to mint the tokken you to have to copy the address and give it to the the mint function having on left side of the compiler and give some value and the transact the value than deploy the function and you see the changes on total supply and same for the to burn the tokken.
     
     
     
     
     
     
     
     
     
     
     
     
     
   





   
