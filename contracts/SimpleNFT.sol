// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract SimpleNFT is ERC721 {
    uint256 public nextTokenId;

    constructor() ERC721("SimpleNFT", "SNFT") {}

    function mint() external {
        _safeMint(msg.sender, nextTokenId);
        nextTokenId++;
    }
}
