pragma solidity ^0.5.0;

import "./KaseiCoin.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";


// Have the KaseiCoinCrowdsale contract inherit the following OpenZeppelin:
// * Crowdsale
// * MintedCrowdsale
contract KaseiCoinCrowdsale { // UPDATE THE CONTRACT SIGNATURE TO ADD INHERITANCE

// Inheriting from Crowdsale and MintedCrowdsale
contract KaseiCoinCrowdsale is Crowdsale, MintedCrowdsale {
    constructor(
        uint256 rate,               // rate in TKNbits
        address payable wallet,     // sale beneficiary
        KaseiCoin token             // the token being sold
    ) 
        Crowdsale(rate, wallet, token)
        public
    {
        // constructor body can remain empty
    }
}
    // Provide parameters for all of the features of your crowdsale, such as the `rate`, `wallet` for fundraising, and `token`.
    constructor(
 //
    ) public Crowdsale(rate, wallet, token) {contract ArcadeTokenCrowdsale is Crowdsale, MintedCrowdsale {
    constructor(
        uint rate,
        address payable wallet,
        ArcadeToken token
    )
        Crowdsale(rate, wallet, token)
        public
    {
       // constructor can stay empty
  }
}

contract KaseiCoinCrowdsaleDeployer {
    // Create an `address public` variable called `kasei_token_address`.
    // address public kasei_token_address;
    // Create an `address public` variable called `kasei_crowdsale_address`.
   // address public kasei_crowdsale_address;

contract KaseiCoinCrowdsaleDeployer {
    address public kasei_token_address;
    address public kasei_crowdsale_address;

    // Add the constructor.
    constructor(
       // (
        string memory name,
        string memory symbol,
        address payable wallet
    )
    ) public {
Create a new instance of the KaseiCoin contract.
KaseiToken token = new KaseiToken(name, symbol, 0);;
        
        Assign the token contract’s address to the `kasei_token_address` variable.
         kasei_token_address = address(token)

        Create a new instance of the `KaseiCoinCrowdsale` contract
        KaseiTokenCrowdsale kasei_crowdsale = new KaseiTokenCrowdsale(1, wallet, token)
            
         Aassign the `KaseiCoinCrowdsale` contract’s address to the `kasei_crowdsale_address` variable.
         kasei_crowdsale_address = address(kasei_crowdsale)

         Set the `KaseiCoinCrowdsale` contract as a minter
         token.addMinter(kasei_crowdsale_address)
        
         Have the `KaseiCoinCrowdsaleDeployer` renounce its minter role.
         token.renounceMinter()
    }
}
