pragma solidity ^0.8.7;

contract Lab8
{
  struct Asset
    {
      string ID;
      uint Challenge;
      uint Response;
    }
  
mapping(string => Asset) public IC;
  
  modifier User()
    {
      require(msg.sender==0x5B38Da6a701c568545dCfcB03FcB875f56beddC4,"Incorrect Key");
      _;
    }
  
  function setID(string memory _ID, uint _Challenge, uint _Response) public User
    {
      IC[_ID].ID = _ID;
      IC[_ID].Challenge = _Challenge;
      IC[_ID].Response = _Response;
    }
}
