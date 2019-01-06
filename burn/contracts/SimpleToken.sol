pragma solidity ^0.5.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol";
// 1. ERC20Burnable.solをインポート
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Burnable.sol";

// 2. ERC20Burnable.solを継承
contract SimpleToken is ERC20, ERC20Detailed, ERC20Mintable, ERC20Burnable {
    constructor(
        string memory name,
        string memory symbol,
        uint8 decimals,
        uint256 initSupply
    )
        ERC20Detailed(name, symbol, decimals)
        ERC20Mintable()
        public
    {
        _mint(msg.sender, initSupply);
    }
}