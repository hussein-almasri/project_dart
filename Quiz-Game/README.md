# Quiz Game 🎯

A console-based Quiz Game built with Dart.

This project is part of my journey learning Dart before moving to Flutter.

## 📌 About The Project

The Quiz Game is a console application that allows players to answer multiple-choice questions and receive a final score.

The project was built to practice Dart programming, Object-Oriented Programming, collections, enums, validation, and user input.

## ✨ Features

- Add multiple-choice questions
- Automatically generate question IDs
- Add players
- Track correct and wrong answers
- Calculate player score
- Validate answers
- Handle invalid user input
- Search for questions by ID
- Filter questions by difficulty
- Shuffle questions
- Start an interactive quiz
- Display final results
- Display player statistics
- Handle invalid question IDs
- Handle invalid answer numbers

## 🎚️ Difficulty Levels

The quiz supports three difficulty levels:

- Easy
- Medium
- Hard

## 🧠 Dart Concepts Practiced

This project helped me practice:

- Classes & Objects
- Constructors
- Static variables
- Encapsulation
- Getters
- Enums
- Lists
- `where()`
- `firstWhere()`
- Nullable types
- `int.tryParse()`
- Methods
- Loops
- Conditional statements
- `return`
- Input validation
- Random shuffling with `shuffle()`
- Object relationships
- Error handling
- Console input with `dart:io`

## 📁 Project Structure

```text
Quiz-Game/
├── lib/
│   ├── question.dart
│   ├── player.dart
│   ├── quiz.dart
│   ├── difficulty.dart
│   └── quizgame_app.dart
└── README.md
🧩 Main Classes
Question

Represents a quiz question.

It contains:

ID
Question text
Options
Correct answer
Difficulty

It also provides a method to check whether the player's answer is correct.

Player

Represents a player.

It keeps track of:

Player name
Correct answers
Wrong answers
Score
Quiz

Responsible for managing:

Questions
Players
Answer validation
Difficulty filtering
Question shuffling
Starting the quiz
Calculating and displaying results
Difficulty

An enum containing:

Easy
Medium
Hard
🧪 Testing

The project was tested with:

10 questions
Multiple difficulty levels
Multiple players
Correct answers
Wrong answers
Invalid question IDs
Invalid answer numbers
Non-numeric input
Question shuffling
Difficulty filtering
Final score calculation
Player statistics

Example invalid inputs:

abc
0
5
-1

The application correctly rejects invalid answers and asks the user to enter a valid answer from 1 to 4.

▶️ How To Run

Make sure Dart is installed, then run:

dart run lib/quizgame_app.dart

Or run the application from the project directory according to your Dart project setup.

🎯 Goal

The main goal of this project is to strengthen my Dart fundamentals through practical projects before starting Flutter.

This is the fourth project in my Dart learning journey.

📚 Learning Journey
Dart Basics
     ↓
To-Do App
     ↓
Expense Tracker
     ↓
Library Management System
     ↓
Quiz Game
     ↓
Weather/Data App
     ↓
Flutter 🚀
Author

Hussein

Learning Dart and preparing for Flutter development.


### ملاحظة صغيرة

إذا اسم الملف عندك فعليًا:

```text
quizgame_app.dart