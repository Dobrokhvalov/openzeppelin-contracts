import 'ERC721.sol'

contract FactoryContract { 
  public IERC721 nft;
  public address owner; 
  
  construstor(string name, string symbol) {
    // creating ERC721 token contract
    IERC721 nft = new ERC721(name, symbol);
    owner = msg.sender;
    
    
    for (i < 2000) { 
      nft.mint(i, owner);
    }
  }
 
  mintNFTWithEther(uint tokenId, address to) { 
    require(tokenId < 10000, 'Max number');
    require(msg.value == 1 eth); 
    nft.mint(tokenId, to);
    
    // transfer ether to owner 
    owner.transfer(msg.value);
  }
 
  
  mintNFTFree(uint tokenId, address to) { 
    require(tokenId < 10000, 'Max number');
    nft.mint(tokenId, to);
  }
 
  
 
}
