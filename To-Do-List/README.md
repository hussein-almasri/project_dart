#To-Do List --- Dart

A simple console-based To-Do List application built with Dart as part of
my journey toward learning Dart and preparing for Flutter.

🎯 Project Goal

The goal of this project is to practice Dart by building a small
application from scratch and combining multiple Dart concepts in one
project.

📚 Concepts Practiced

Object-Oriented Programming

Classes and Objects

Constructors

final and static

Private fields

Methods

Lists

where()

Null Safety

Nullable types (Task?)

@override

toString()

String interpolation

Ternary operator

Separation between models and management logic

📁 Project Structure

To-Do-List/
└── lib/
    ├── models/
    │   ├── task.dart
    │   └── to_do_manager.dart
    │
    └── todo_app.dart

🧩 Main Components

Task

Represents a single task.

Each task contains:

id

title

description

isCompleted

Task IDs are generated automatically using a static counter.

A task can be completed using:

task.complete();

TodoManager

Responsible for managing the task collection.

It supports:

Adding tasks

Removing tasks

Completing tasks

Finding a task by ID

Showing all tasks

Showing completed tasks

Showing pending tasks

Counting total tasks

Counting completed tasks

Counting pending tasks

Searching tasks by keyword

🧪 Testing

The project was tested with both normal and edge cases:

Adding multiple tasks

Automatic task IDs

Completing a task

Completing an already completed task

Finding an existing task

Finding an invalid ID

Searching with a matching keyword

Searching with no matching results

Removing a task

Removing an invalid ID

Checking task statistics

Displaying completed and pending tasks

Example:

Total tasks: 2
Completed tasks: 1
Pending tasks: 1

💡 What I Learned

This project helped me move from learning Dart concepts individually to
combining them into a working application.

The main goal was not just to make the program work, but to understand
how the different Dart concepts connect together in a real project.

🚀 Next Step

This is the first project in my Dart practice journey.

Next project:

Expense Tracker

The projects will gradually become more complex before moving on to
Flutter.

🛠️ Technologies

Dart

VS Code

Git & GitHub
