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
    event AddTask (Task);
    event ChangeStateTask (Task);

    // External functions
    function createTask(string memory title_, string memory description_) public {
        id += 1;
        Task memory task1 = Task( id, title_, description_, false );
        tasks.push(task1);
        emit AddTask(task1);
    }

    function showTasks() public view returns(Task[] memory){
        return tasks;
    }

    function changeTitleOfTask(uint16 id_, string memory title_) public {
        for(uint16 i = 0; i < tasks.length; i++){
            if(id_ == tasks[i].id){
                tasks[i].title = title_;
            }
        }
    }

    function changeDescriptionOfTask(uint16 id_, string memory description_) public {
        for(uint16 i = 0; i < tasks.length; i++){
            if(id_ == tasks[i].id){
                tasks[i].description = description_;
            }
        }
    }

    function changeStateOfTask(uint16 id_) public {
        for(uint16 i = 0; i < tasks.length; i++){
            if(id_ == tasks[i].id){
                tasks[i].completed = !tasks[i].completed;
                emit ChangeStateTask(tasks[i]);
            }
        }
    }

    // Internal functions

}
