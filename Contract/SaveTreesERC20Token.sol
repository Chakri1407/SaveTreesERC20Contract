// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
 //0x6d145034B4c7adcBee3De64dDBBcf53136051391
contract MyContract is ERC20,ERC20Burnable,Ownable {
 
 constructor(string memory _tokenName, string memory _tokenSymbol,uint256 _initialSupply) ERC20(_tokenName,_tokenSymbol) Ownable(msg.sender){
     _mint(msg.sender, _initialSupply);
     
 }

 function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
