// contracts/MyNFT.sol
// SPDX-License-Identifier: MIT

// NFT Test contract

// Can be used through an interface but the sole aim of
// setting this up is to test the parent contract.

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NFT is ERC721 {
    constructor() ERC721("My NFT", "NFT") {
        _mint(msg.sender, 0);
        _mint(msg.sender, 1);
        _mint(msg.sender, 2);
    }
}
