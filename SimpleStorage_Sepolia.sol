// SPDX-License-Identifier:MIT
pragma solidity 0.8.34; // this is the solidity version
contract SimpleStorage {
    //favoriteNumber gets initialized to 0 if no value is given
   uint256 myFavoriteNumber;//0
   //uint256[] listOfFavoriteNumber;
   struct Person{
    uint256 FavoriteNumber;
    string name;


   }
   //dynamic array
   Person[] public listOfPeople; 
   //mapping 
   //anish => 7
   mapping(string=> uint256) public nameToFavoriteNumber;

    
   //static array
   //Person[3]public listOfPeople;
   //Person[]public listOfPeople;
    //Person public myFriend = Person (7,"ish");//or
 
 //Person public myFriend = Person ({favoriteNumber:7, name : "ish" });
 
   
   

   function store (uint256 _FavoriteNumber) public{

myFavoriteNumber = _FavoriteNumber ;
}
// view and pure
function retrival() public view returns (uint256){
    return myFavoriteNumber;
}
/// array 
    //function addPerson(string memory _name, uint256 _FavoriteNumber) public{
        //listOfPeople.push(Person(_FavoriteNumber,_name));
  //  }

//calldata 
function addPerson(string memory _name, uint256 _FavoriteNumber) public{
        listOfPeople.push(Person(_FavoriteNumber,_name));
        nameToFavoriteNumber[_name] = _FavoriteNumber;
    }
}