pragma solidity ^0.4.0;

contract DragonStone {
    
    address public creator;
    mapping(address => uint ) public balance;
    uint constant public PRICE = 5000000000000000000; // 5 ether
    
    function DragonStone(){
        creator = msg.sender;
    }
    function create() public payable {
        require(msg.value > 0 && msg.value % PRICE == 0);
        balance[msg.sender] += (msg.value/PRICE);
    }
    function transfer(address receiver, uint amount) public {
        if(amount > 0 && balance[msg.sender] > 0){
            balance[msg.sender] -= amount;
            balance[receiver] += amount;
        }
    }
 }