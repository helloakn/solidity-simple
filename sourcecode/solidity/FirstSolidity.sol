pragma solidity ^0.4.0;
contract FirstSolidity {
    
   string firstName;
   string positionName;
   uint age;

   function setDeveloper(string _firstName,string _positionName, uint _age) public {
       firstName = _firstName;
       positionName = _positionName;
       age = _age;
   }
   
   function getDeveloper() view public returns (string, string, uint) {
       return (firstName, positionName, age);
   }
   
}