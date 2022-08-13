## Mint Contract from Bru Live Test

*ERC721 Generation and Transfer platform* 

This contract was originally deployed to mumbaiscan at: *0xd2ba18f394937fde7e8887ba3edc67077c223ae8*

and deploy it on any Ethereum Testnet as well as Polygon Mumbai Testnet, where it auto-detects the network and displays the NFTs automatically with the functionality of transferring it to another wallet. The minting has to be from a simple button on the frontend.

Open the contracts folder to read the (ManageTokens contract)[./contracts/ManageTokens.sol]. Be sure to initialize it with a BaseURI.

To compile the contract: `npm run compile`;

Be sure to set your PRIVATE_KEY and ALCHEMY_URL for the tsetnet you decide to go. Open .env.example for more info.

To deploy the contract: 
* Open the `scripts/deploy.js` file and add a baseURI
* Run `npm run deploy` to deploy, you can edit the network in package.json.

