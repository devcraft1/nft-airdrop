// contracts/MyNFT.sol
// SPDX-License-Identifier: MIT

// NFT Test contract

// Can be used through an interface in another contract but the sole aim of
// setting this up is to test the parent contract.

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Tollan is ERC721 {
    constructor() ERC721("TollanNFT", "TON") {}
}
