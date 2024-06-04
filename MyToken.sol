pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
    constructor(address initialOwner) ERC20("MyToken", "MTK") Ownable(initialOwner) {
        
    }

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        require(recipient != address(0), "transfer to the zero address");
        require(balanceOf(msg.sender) >= amount, "transfer amount is more then your balance");

        _transfer(msg.sender, recipient, amount);
        return true;
    }

  
  
}
