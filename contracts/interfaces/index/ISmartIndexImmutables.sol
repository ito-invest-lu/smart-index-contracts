//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ISmartIndexImmutables {

    /**
     * @dev Returns the name of the index.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the index.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the index.
     */
    function decimals() external view returns (uint8);
    
}