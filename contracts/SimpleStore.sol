pragma solidity ^0.5.0;
import "./Test.sol";

contract SimpleStore {
  uint256 value;

  event NewValueSet(uint256 indexed _value, address _sender);
  event NewValueSetAgain(uint256 indexed _value, address _sender);

  Test[] public cntrcts ;

  function set(uint256 _value) public {
    value = _value;
    emit NewValueSet(value, msg.sender);
  }

  function setAgain(uint256 _value) public {
    value = _value;
    emit NewValueSetAgain(value, msg.sender);
  }

  function get() public view returns (uint256, address) {
    return (value, msg.sender);
  }

  function doLotOfStuff(uint256 val) public{
      for(uint256 i =0;i<val;i++){
          cntrcts.push(new Test());
      }
  }
}
