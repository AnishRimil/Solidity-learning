//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

 import"./SimpleStorage_sepolia.sol";
 contract StorageFactory{
    SimpleStorage[] public listOfSimpleStorageContracts; 
    function createSimpleStorageContract() public{ 
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);


    } 
function sfStore(uint256 _SimpleStorageIndex, uint256 _newSimpleStorageNumber) public {
// address
//ABI - application Binary Interface
SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_SimpleStorageIndex]; 
mySimpleStorage.store(_newSimpleStorageNumber);
}
function sfGet(uint256 _simpleStorageIndex)public view returns(uint256)  {
    return listOfSimpleStorageContracts[_simpleStorageIndex] .retrival();
}

 }
