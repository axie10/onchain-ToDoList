// License
// SPDX-License-Identifier: LGPL-3.0-only

// Compiler version
pragma solidity ^0.8.24;

contract ToDoList {


    struct Task {
        uint16 id;
        string title;
        string description;
        bool completed;
    }

    // Variables
    Task[] public tasks;
    uint16 id;

    // Modifiers

    // Events

    // External functions
    function createTask(string memory title_, string memory description_) public {
        id += 1;
        Task memory task1 = Task( id, title_, description_, false );
        tasks.push(task1);
    }

    function showTasks() public view returns(Task[] memory){
        return tasks;
    }

    function changeStateofTask() public {

    }

    // Internal functions

}
