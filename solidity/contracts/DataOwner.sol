// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract DataOwner {
    address public owner_address;
    int256 yield;
    mapping(bytes32 => bytes32)[] public transactions;
    bytes32 email;
    bytes32 name;
    bytes32 PhoneNumber;
    bytes32 SocialSecurityNumber;
    bytes32 Nationality;
    mapping(bytes32 => bytes32) public UserProfile;

    constructor(
        bytes32 _email,
        bytes32 _name,
        bytes32 _PhoneNumber,
        bytes32 _SocialSecurityNumber,
        bytes32 _Nationality
    ) public {
        email = _email;
        name = _name;
        PhoneNumber = _PhoneNumber;
        SocialSecurityNumber = _SocialSecurityNumber;
        Nationality = _Nationality;
    }

    function chargeDataBuyer() public returns (uint256 product, uint256 sum) {
        transactions.push({addr: msg.sender, amount: msg.value});
        yield += msg.value;
    }
}
