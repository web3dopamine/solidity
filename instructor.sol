pragma solidity ^0.4.0;

contract Instructor {
    
        address creator;
        string fname;
        uint age;
    
    event InstructorEvent(string name, uint age);
    
    function Instructor() {
        creator = msg.sender;
    }
    
    function setInstructor(string _fname, uint _age) {
        fname = _fname;
        age = _age;
        InstructorEvent(_fname, _age);
    }
    
    function getInstructor() view public returns (string, uint){
        return(fname, age);   
    }
}