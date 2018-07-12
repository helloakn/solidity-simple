pragma solidity ^0.4.0;
contract FirstSolidity {
    
   string firstName;
   string positionName;
   uint age;

    event Developer(
        string name,
        string position,
        uint age
        );
   function setDeveloper(string _firstName,string _positionName, uint _age) public {
       firstName = _firstName;
       positionName = _positionName;
       age = _age;
       Developer(_firstName, _positionName, _age);
   }
   
   function getDeveloper() view public returns (string, string, uint) {
       return (firstName, positionName, age);
   }
   
}