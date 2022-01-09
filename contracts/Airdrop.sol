//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

contract Airdrop {
    // state variables
    address public admin;
    mapping(address => bool) public processedAirdrops;
    IERC721 public nft;
    event AirdropProcessed(address recipient, uint256 tokenId, uint256 date);
    uint256 public airdropId;

    constructor(address _nftAddress, address _admin) {
        admin = _admin;
        nft = IERC721(_nftAddress);
    }

    function updateAdmin(address newAdmin) external {
        require(msg.sender == admin, "only admin");
        admin = newAdmin;
    }

    function claimTokens(address recipient, uint256 tokenId) external {
        require(
            processedAirdrops[recipient] == false,
            "airdrop already processed"
        );
        processedAirdrops[recipient] = true;
        nft.safeTransferFrom(admin, recipient, airdropId++);
        emit AirdropProcessed(recipient, tokenId, block.timestamp);
    }
}
