// Using SafeMath to prevent arithmetic errors

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract SafeArithmeticExample {
    using SafeMath for uint256;

    uint256 public balance = 100;

    function withdraw(uint256 amount) public {
        require(balance >= amount, "Insufficient balance");
        balance = balance.sub(amount);
    }
}
