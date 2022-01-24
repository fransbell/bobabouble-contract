# bobabouble-contract
solidity smart contract for Boba Bouble Utility Token &amp; Boba Bouble NFT

### payable ERC20

ERC20 token with functionality mint by sending ethers.

### payable ERC721

ERC721 token (NFT) with functionality mint by spending ERC20 as a payment.

- require approval from ERC20 to spend token balance beforehand.
- require deployed ERC20 contract address and declare address as following in ERC721 contract.

``` 
IERC20 token = IERC20(0x7538F05C6af698109f0a064c041C20Cf2e6B1E2D); 
```
as 0x7538F05C6af698109f0a064c041C20Cf2e6B1E2D is ERC20 contract address.
