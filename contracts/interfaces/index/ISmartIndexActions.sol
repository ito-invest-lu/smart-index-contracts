//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ISmartIndexActions {
    
    enum FiatCurrencies { USD, EUR } /// TODO : make this configurable

    /// @notice Adds a constituent to the index
    /// @param name the name of the asset
    /// @param priceOracle the oracle providing the price of the asset
    /// @param circulatingSupplyOracle the oracle providing the circulating supply of the asset
    /// @param currency the currency of the Oracle
    
    function addConstituent (
        string name,
        address priceOracle,
        adresss circulatingSupplyOracle,
        FiatCurrencies currency
    ) external;

    /// @notice Sets the cap level of the index
    /// @param name the name of the asset
    function setCap (
        uint128 level
    ) external;
    
    /// @notice Sets the floor level of the index
    /// @param name the name of the asset
    function floorCap (
        uint128 level
    ) external;
}