pragma solidity ^0.5.0;

//  Import the following contracts from the OpenZeppelin library:
//    * `ERC20`
//    * `ERC20Detailed`
//    * `ERC20Mintable`
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Mintable.sol";

// Create a constructor for the KaseiCoin contract and have the contract inherit the libraries that you imported from OpenZeppelin.

// KaseiCoin inherits from ERC20, ERC20Detailed, and ERC20Mintable
contract KaseiCoin is ERC20, ERC20Detailed, ERC20Mintable {
    // Constructor for KaseiCoin
    constructor(string memory name, string memory symbol, uint8 decimals) 
    ERC20Detailed(name, symbol, decimals) 
    public {
        // Additional initialization can go here
    }
}