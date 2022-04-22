//SPDX-License-Identifier: GPL:3.0
pragma solidity >=0.6.2 <0.9.0;

contract first_coin
{
    uint balance;
    constructor()
    {
        balance = 0;
    }

    //deposit
    function deposit(uint amount) public
    {
        balance += amount;
    }
    //withdraw
    function withdraw(uint amount) public
    {
        require(amount < balance, "Not Enough Funds");
        balance -= amount;
    }
    //getBalance
    function getBalance() public view returns(uint)
    {
        return balance;
    }
}