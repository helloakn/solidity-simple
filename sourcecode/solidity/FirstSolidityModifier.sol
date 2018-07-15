pragma solidity ^0.4.0;
contract FirstSolidityModifier {
    
   string firstName;
   string positionName;
   uint age;
   
   address owner;
   function FirstSolidityModifier() public{
       owner = msg.sender;
       
       
   }
   
   modifier onlyOwner{
       require(msg.sender == owner);
       _;
   }

    event Developer(
        string name,
        string position,
        uint age
        );
   function setDeveloper(string _firstName,string _positionName, uint _age) onlyOwner public {
       firstName = _firstName;
       positionName = _positionName;
       age = _age;
       Developer(_firstName, _positionName, _age);
   }
   
   function getDeveloper() view public returns (string, string, uint) {
       return (firstName, positionName, age);
   }
   
}