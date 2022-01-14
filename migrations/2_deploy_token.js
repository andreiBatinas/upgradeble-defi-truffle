const Token = artifacts.require("Token");
const dBank = artifacts.require("dBank");

module.exports = async function (deployer) {
  await deployer.deploy(Token)

  const token = await Token.deployed()

  await deployer.deploy(dBank, token.address)

  const dBankContract = await dBank.deployed()

  await token.transferOwnership(dBankContract.address)

};
