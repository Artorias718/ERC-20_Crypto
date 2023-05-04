pragma solidity ^0.5.0;

contract Token{

    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public totalSupply;
    uint256 public initialSupply;
    address public owner;
    uint256 public maxSupply;
    // uint256 constant public maxSupply = 100000*10**uint256 (decimals)
    
    mapping (address => uint256) public balanceOf;

    constructor() public {

        name = "sicoin";
        symbol = "SIC";
        decimals = 4;
        initialSupply = 100000*10**uint256 (decimals);
        totalSupply = initialSupply;
        owner = msg.sender;
        balanceOf[owner] = totalSupply;
    }

    function _transfer(address _from, address _to, uint256 _value) internal {

        require(balanceOf[_from] >= _value, "You are trying to send more than you own.");
        require(_to != address(0), "Address can't be empty");

        balanceOf[_from ] -= _value;
        balanceOf[_to] += _value;

    }






}