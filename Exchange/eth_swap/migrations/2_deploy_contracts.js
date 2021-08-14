const Token = artifacts.require("Token");
const EthSwap = artifacts.require("EthSwap");

module.exports = async function(deployer) {
    //deploy Token
    await deployer.deploy(Token);
    const token = await Token.deployed()
    
    //deploy Ethswap
    await deployer.deploy(EthSwap, token.address );
    const ethSwap = await EthSwap.deployed()

    //transfer all tokens to ethswap
    await token.transfer(ethSwap.address, '1000000000000000000000000')

};
