const SimpleToken = artifacts.require("./SimpleToken.sol");

contract("SimpleToken", accounts => {
    it("...should put 100ST in the first account.", async () => {
        //コントラクトのインスタンスを取得
        const simpleTokenInstance = await SimpleToken.deployed();

        //account[0]のトークンの残高を取得
        let balance = await simpleTokenInstance.balanceOf(accounts[0]);
        //桁数が大きいのether単位(10^18)に変換
        balance = web3.utils.fromWei(balance, "ether");

        //残高数と数字100を比較
        //同じであれば合格
        assert.equal(balance, 100, "First account don't have 100 ST.");
    });
});