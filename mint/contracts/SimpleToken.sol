pragma solidity >=0.4.21 <0.6.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
// 1.ERC20Mintable.solをインポート
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol";

// 2.ERC20Mintable.solを継承
contract SimpleToken is ERC20, ERC20Detailed, ERC20Mintable {
    constructor(
        string name,
        string symbol,
        uint8 decimals,
        uint256 initSupply
    )
        ERC20Detailed(name, symbol, decimals)
        // 3.MinterRoleのコンストラクタを呼び出す
        ERC20Mintable()
        public
    {
        _mint(msg.sender, initSupply);
    }
}