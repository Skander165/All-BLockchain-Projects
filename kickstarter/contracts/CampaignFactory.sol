//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;
import "./Campaign.sol";


contract CampaignFactory{
    address[] public deployedCampaigns;

    function createCampaign(uint minimum) public {
        address newCampaign = new Campaign(minimum);
        deployedCampaigns.push(newCampaign);
    }
}