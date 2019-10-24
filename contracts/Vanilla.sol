pragma solidity ^0.5.11;

//ERC20 imports needed to use Packs for redemption
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.3.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.3.0/contracts/token/ERC20/ERC20Detailed.sol";

//ERC721 import, that is what this is
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.3.0/contracts/token/ERC721/ERC721.sol";

contract Vanilla is ERC721Full {
  address owner;
  address packs;
  uint4 pack_multiplier; //limiting to uint4 means this can not be more than 16. we plan on using 10, hard coded, never changable.

  constructor(address _packs) ERC721Full("GameItem", "ITM") public {
    owner = msg.sender;
    packs = _packs;
    pack_multiplier = 10;
  }

  //call this function to redeem pack_multiplier
  function redeemPack() {
    ERC20 instance = EIP20(packs);
    require(instance.balanceOf(msg.sender) > 0);

    //TODO recieve erc20 token pack.There will be no way to move it off this contract.
    //Number of packs this contract holds is the number of redeemed, can not be changed, or used again.

    uint4 j = 0;
    for(j = 0; j < pack_multiplier; j++){
      //redeem pack_multiplier number of packs
    }
  }

}
