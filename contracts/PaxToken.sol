// SPDX-License-Identifier: MIT
/// @title Pax Token
/// @author @arewageek
/// @notice Paxtoken is an ERC20 token that rewards a random staker with the transaction fees from each transaction

pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract PaxToken is ERC20 {

    address payable owner;
    uint256 maxMint;
    uint256 trxFee;

    mapping(address account => uint256 staked) public stakers;
    
    constructor(address _owner) ERC20("PaxToken", "PXT"){

        owner = payable(_owner);
        maxMint = 100000000000000;
        
        _mint(owner, maxMint);
    }

    function 
}