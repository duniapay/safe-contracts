// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.7.0;

import "../node_modules/openzeppelin-solidity/contracts/ownership/Ownable.sol";
import "../node_modules/openzeppelin-solidity/contracts/math/Math.sol";
import "../node_modules/openzeppelin-solidity/contracts/math/SafeMath.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/SafeERC20.sol";

contract XOF is ERC20,ERC20Detailed, Ownable  {

    constructor(uint256 initialSupply) ERC20Detailed("XOF", "FCFA", 18) public {
        _mint(msg.sender, initialSupply);
    }

    function mint(address account, uint256 amount) external onlyOwner {
      _mint(account, amount);
    }
         
    function burn(address account, uint256 amount) external onlyOwner {
        _burn(account, amount);
    }
}