// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ManageTokens is ERC721, Ownable {
    string private _baseUri;

    constructor(string memory URI) ERC721("Brukn", "BRTK") {
        // Initialize the baseURI of the NFTs
        _baseUri = URI;
    }

    // mint the NFT to caller's wallet
    function mintNFT(uint256 tokenId) public onlyOwner {
        _safeMint(msg.sender, tokenId);
    }

    function setBaseURI(string memory uri) public onlyOwner {
        _baseUri = uri;
    }

    // This allows us to return the BASEURI provided in the contract to contracts that call for it
    function _baseURI() internal view override returns (string memory) {
        return _baseUri;
    }

    function getOwner(uint256 tokenId) public view returns (address) {
        return ownerOf(tokenId);
    }

    function transferToken(address to, uint256 tokenId) public {
        // make sure that the owner is the sender
        require(ownerOf(tokenId) == msg.sender, "Not the owner of token");

        safeTransferFrom(msg.sender, to, tokenId);
    }
}