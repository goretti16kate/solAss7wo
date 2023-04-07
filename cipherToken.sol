// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

// importing OZ's implementation of the ERC-20 standard contract
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

// our cipherToken contract inherits from the ERC20 contract
contract cipherToken is ERC20{
	// when deploying, you'll need to give the Token a name and symbol.
	// The decimals places are 18
    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {
        _mint(msg.sender, 100 * 10 ** 18);
    }
}
