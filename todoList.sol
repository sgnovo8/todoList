pragma solidity ^0.5.0;

contract ToDoList {
    uint public taskCount = 0;
    
    struct Task {
        uint id;
        string content;
        bool completed;
    }
    
    mapping(uint => Task) public tasks;
    
    constructor() public {
        createTask("wash car");
    }
    
    // is "view" necessary here?
    // also, see "++" (from what library?)
    
    function createTask(string memory content) public view {
        taskCount ++;
        tasks[taskCount] = Task(taskCount, content, false);
        
    }
    
    }
    
