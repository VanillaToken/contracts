pragma solidity ^0.5.11;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.3.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.3.0/contracts/token/ERC20/ERC20Detailed.sol";

contract Packs is ERC20, ERC20Detailed {

  constructor () public ERC20Detailed("MyToken", "AAA", 18) {
        //Create 1,000,000 Packs. Each can be redeemed for 10 tokens
        _mint(msg.sender, 1000000 * (10 ** uint256(decimals())));
    }
}
