//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ISmartIndexState {
    
    /// @notice The 0th storage slot in the index stores many values, and is exposed as a single method to save gas
    /// when accessed externally.
    /// @return priceX96 The current price of the index as a Q64.96 value
    /// tick The current tick of the pool, i.e. according to the last tick transition that was run.
    /// This value may not always be equal to SqrtTickMath.getTickAtSqrtRatio(sqrtPriceX96) if the price is on a tick
    /// boundary.
    /// observationIndex The index of the last oracle observation that was written,
    /// observationCardinality The current maximum number of observations stored in the pool,
    /// observationCardinalityNext The next maximum number of observations, to be updated when the observation.
    
    function slot0()
        external
        view
        returns (
            uint160 priceX96,
            uint80 roundId /// TODO : shall be a list of roundIds for all Oracle used
        );
    
}