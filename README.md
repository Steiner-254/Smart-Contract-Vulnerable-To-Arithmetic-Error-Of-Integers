# Smart-Contract-Vulnerable-To-Arithmetic-Error-Of-Integers
Smart Contract Vulnerable To Arithmetic Error Of Integers

#Description
~ A common vulnerability related to arithmetic errors in smart contracts involves the underflow or overflow of integer variables. Let's consider a simple example of a vulnerable smart contract written in Solidity, Ethereum's smart contract programming language: vulnerable.sol

# vulnerable.sol
~ In this contract, the withdraw function is intended to allow users to withdraw a specified amount of funds from their balance. However, it has a vulnerability. If an attacker sends an extremely large value for the amount parameter, close to the maximum value that a uint256 can represent (2^256 - 1), the subtraction operation balance -= amount will cause an integer underflow. Instead of throwing an error or reverting the transaction, the balance will wrap around to a very large number, allowing the attacker to effectively drain the contract of its funds.

# fix.sol
~ To fix this vulnerability, you should check for integer underflows and overflows and handle them properly. For example, you can use the SafeMath library, which is designed to prevent these types of errors: fix.sol

~ In the revised contract, we use the SafeMath library to perform safe arithmetic operations, which automatically checks for overflows and underflows, and reverts the transaction if such errors occur. This protects the contract from arithmetic vulnerabilities.
