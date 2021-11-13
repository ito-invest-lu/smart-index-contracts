//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './index/ISmartIndexImmutables.sol';
import './index/ISmartIndexActions.sol';
import './index/ISmartIndexOwnerActions.sol';
import './index/ISmartIndexEvents.sol';
import './index/ISmartIndexState.sol';

/// @title The interface for a SmartIndex
/// @notice A SmartIndex compute the value of a specified index following an
/// Index Methodology using Oracle and Smart Constracts
/// @dev The index interface is broken up into many smaller pieces

interface ISmartIndex is 
    ISmartIndexImmutables,
    ISmartIndexActions,
    ISmartIndexOwnerActions,
    ISmartIndexEvents,
    ISmartIndexState
{

}