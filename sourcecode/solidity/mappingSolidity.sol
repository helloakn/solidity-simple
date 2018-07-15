pragma solidity ^0.4.18;

contract Simple{
    
    address owner;
   function Simple() public{
       owner = msg.sender;
       
       
   }
    struct Devloper{
        uint age;
        string fName;
        string position;
    }
    mapping (address => Devloper) developers;
    
    address[] public developerActs;
    
    function setDeveloper(address _address, uint _age,string _fName, string _position) public{
        var developer = developers[_address];
        developer.age = _age;
        developer.fName = _fName;
        developer.position = _position;
        
        developerActs.push(_address) -1;
        
    }
    
    function getDeveloperAddrs() view public returns(address[]){
        return developerActs;
    }
    
    function getAddr() view public returns(address){
        return owner;
    }
    
    function getDeveloperByAddr(address _address) view public returns(uint, string, string){
        return (developers[_address].age, developers[_address].fName, developers[_address].position);
    }
    
}