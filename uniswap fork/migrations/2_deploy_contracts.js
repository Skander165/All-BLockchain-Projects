const Factory = artifacts.require("UniswapV2Factory.sol");

module.exports = async function (deployer, network, addresses) {
  await deployer.deploy(Factory, addresses[0]);
  const factory = await Factory.deployed();
  

  if(network == 'mainnet') {
    token1Address = '';
    token1Address = '';
  }
  else {
    
  }
  await factory.createPair()
};
