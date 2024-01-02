// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

import { OFT } from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFT.sol";

contract YourOFT is OFT {
    constructor(
        string memory _name,
        string memory _symbol,
        address _lzEndpoint,
        address _owner
    ) OFT(_name, _symbol, _lzEndpoint, _owner) {}

    // TODO In the event you wish to add custom logic to your OFT contract, uncomment these and alter any corresponding logic...

    // @dev allows the quote functions to mock sending the actual values that would be sent in a send()/sendAndCall()
    //    function _debitView(
    //        uint256 _amountLD,
    //        uint256 _minAmountLD,
    //        uint32 /*_dstEid*/
    //    ) internal view virtual override returns (uint256) {
    //        uint256 amountLDSend = _removeDust(_amountLD);
    //        if (amountLDSend < _minAmountLD) revert AmountSlippage(amountLDSend, _minAmountLD);
    //
    //        return amountLDSend;
    //    }

    // @dev hook applied to debit tokens on the src chain
    //    function _debit(
    //        uint256 _amountLD,
    //        uint256 _minAmountLD,
    //        uint32 _dstEid
    //    ) internal virtual override returns (uint256) {
    //        uint256 amountLDSend = _debitView(_amountLD, _minAmountLD, _dstEid);
    //
    //        _burn(msg.sender, amountLDSend);
    //        return amountLDSend;
    //    }

    // @dev hook applied on the receipt of tokens on the dst chain
    //    function _credit(address _to, uint256 _amountLD, uint32 /*_srcEid*/) internal virtual override returns (uint256) {
    //        _mint(_to, _amountLD);
    //        return _amountLD;
    //    }
}
