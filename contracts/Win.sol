// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

interface Contract {
    function attempt() external;
}

contract Win {
    address public contractAddress;

    constructor(address _contractAddress) {
        contractAddress = _contractAddress;
    }

    function win() external {
        Contract(contractAddress).attempt();
    }
}
