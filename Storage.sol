// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 */
contract Storage {

    string dataValue;

    // event
    event DataSet(string dataValue);

    function store(string memory dataSent) public {
        emit DataSet(dataSent);
        dataValue = dataSent;
    }

    function resetNumber() public {
        dataValue = 'nothing';
    }

    function retrieve() public view returns (string memory){
        return dataValue;
    }
}