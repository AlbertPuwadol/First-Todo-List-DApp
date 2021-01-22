pragma solidity >=0.4.22 <0.9.0;

contract TodoList{
    uint public taskCount = 0;

    struct Task {
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks;

    event taskCreated(
        uint id,
        string content,
        bool completed
    );

    constructor() public {
        createTask("Check Out first time!!");
    }

    function createTask(string memory _content) public{
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
        emit taskCreated(taskCount, _content, false);
    }

}