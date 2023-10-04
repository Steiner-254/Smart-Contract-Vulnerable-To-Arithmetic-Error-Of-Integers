// This is a vulnerable smart contract that can be exploited due to arithmetic errors

pragma solidity ^0.8.0;

contract ArithmeticErrorExample {
    uint256 public balance = 100;

    function withdraw(uint256 amount) public {
        require(balance >= amount, "Insufficient balance");
        balance -= amount;
        // Let's assume an attacker tries to withdraw a large amount
        // by causing an integer underflow
        // This can be done by sending a very large 'amount' value, like 2^256 - 1
        // which would result in balance becoming a very large number
        // due to underflow, rather than an error or reverting the transaction.
    }
}
