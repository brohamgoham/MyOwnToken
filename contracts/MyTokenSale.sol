pragma solidity ^0.8.0;

import "FlashSale.sol";
contract MyCrowdsale is MyTokenSale {

    constructor(
        uint256 rate,   //rate in TKNbits
        address payable wallet ,
        IERC20 token ,
        KycContract _kyc
    )

    Crowdsale(rate , wallet , token)
    public
    {
        kyc = _kyc;

    }
    function _preValidatePurchase(address beneficiary, uint256 weiAmount) internal view {
       super._preValidatePurchase(beneficiary, weiAmount);

       require(kyc.kycCompleted(msg.sender), "KYC Not completed, purchace not allowed");
    }
}

