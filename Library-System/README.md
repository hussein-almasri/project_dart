# Library Management System 📚

A console-based Library Management System built with Dart.

This project is part of my journey learning Dart before moving to Flutter.

## 📌 About The Project

The Library Management System is a simple console application that allows users to manage books and library members.

The system supports adding, removing, searching, borrowing, and returning books while keeping track of book availability and member borrowing records.

The main goal of this project is to practice Dart and Object-Oriented Programming through a real-world example.

## ✨ Features

### 📖 Book Management

- Add books
- Remove books
- Find books by ID
- Search books by title or author
- Filter books by category
- Show available books
- Show borrowed books

### 👤 Member Management

- Add members
- Remove members
- Find members by ID
- Show all members
- Show books borrowed by a member
- Prevent removing members who have borrowed books

### 🔄 Borrowing System

- Borrow available books
- Return borrowed books
- Prevent borrowing an already borrowed book
- Prevent a member from returning a book they did not borrow
- Prevent borrowing or returning non-existing books
- Prevent borrowing or returning with a non-existing member

### 📊 Statistics

The system provides:

- Total books
- Available books
- Borrowed books
- Total members

## 🏷️ Book Categories

The application supports:

- Programming
- Science
- History
- Novel
- Technology
- Business
- Other

## 🧠 Dart Concepts Practiced

Through this project, I practiced:

- Classes & Objects
- Constructors
- Named Parameters
- `final`
- `static`
- Private fields
- Getters
- `List`
- `List.unmodifiable`
- Enums
- Null Safety
- `where()`
- `contains()`
- `removeWhere()`
- `toString()`
- Object-Oriented Programming
- Object Relationships
- Validation
- Conditional Logic

## 📁 Project Structure

```text
Library-System/
├── lib/
│   ├── Book.dart
│   ├── category.dart
│   ├── member.dart
│   ├── library.dart
│   └── library_app.dart
└── README.md
🧪 Testing

The application was tested with:

Empty library
Adding multiple books
Adding multiple members
Finding existing books and members
Finding invalid books and members
Searching by title
Searching by author
Case-insensitive search
Searching with no results
Filtering by category
Borrowing books
Borrowing an already borrowed book
Returning books
Returning a book not borrowed by the member
Invalid member operations
Invalid book operations
Removing borrowed books
Removing available books
Removing members with borrowed books
Removing members without borrowed books
Library statistics
📊 Example
Total Books: 5
Available Books: 2
Borrowed Books: 3
Total Members: 3

After returning and removing some books and members:

Total Books: 4
Available Books: 3
Borrowed Books: 1
Total Members: 2
▶️ How To Run

Make sure the Dart SDK is installed.

Run the application from the project directory:

dart run lib/library_app.dart
🎯 Goal

The goal of this project is to strengthen my Dart programming and Object-Oriented Programming skills through practical projects.

This project is another step in my journey toward Flutter development.

C++ → Dart → Projects → Flutter 🚀
👨‍💻 Author

Hussein

Learning Dart and preparing for Flutter 🚀