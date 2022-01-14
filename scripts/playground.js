const Token = artifacts.require("Token");


module.exports = async function (callback) {
  const token = await Token.deployed()

  const accounts = await web3.eth.getAccounts()
  const account = accounts[0]
  const dec = await token.decimals()

  const balance = await token.balanceOf(account.address)

  const etherBalance = await web3.eth.getBalance(account)

  web3.utils.fromWei(etherBalance)


  tx = await token.mint(web3.utils.toWei(100))

  tokenBalance = await token.balanceOf(firstAccount)
  strTokenBalance = tokenBalance.toString()


  callback();
}
// 99 * 10**18
// 99.735594160000000000 ether
// 99735594160000000000 wei