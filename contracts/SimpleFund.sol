pragma solidity ^0.5.0;

contract SimpleFund {

    event NewFund(uint id, address adr);

    struct Fund { 
        uint eth;
        uint oneinch;
        uint usdt;
        uint startTime;
        uint endTime;
        address adr;
    }

    Fund[] public funds;

    function _createFund(address adr) internal {
        uint id = funds.push(Fund(0,0,0, now, 0, adr)) - 1;
        emit NewFund(id, adr);
    }

    function createFund() public {
        _createFund(msg.sender);
    }

}