// contracts/MyNFT.sol
// SPDX-License-Identifier: MIT

// NFT Test contract

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Tollan is ERC721 {
    constructor() ERC721("TollanNFT", "TLN") {}
}
