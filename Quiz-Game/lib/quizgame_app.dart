import 'models/difficulty.dart';
import 'models/player.dart';
import 'models/quiz.dart';

void main() {
  Quiz quiz = Quiz();

  print("========== ADD QUESTIONS ==========");

  // 1
  quiz.addQuestions(
    "What is Dart?",
    [
      "Programming Language",
      "Database",
      "Operating System",
      "Browser",
    ],
    Difficulty.Easy,
    1,
  );

  // 2
  quiz.addQuestions(
    "Which keyword creates a constant in Dart?",
    [
      "var",
      "final",
      "const",
      "static",
    ],
    Difficulty.Easy,
    3,
  );

  // 3
  quiz.addQuestions(
    "Which collection stores unique values?",
    [
      "List",
      "Map",
      "Set",
      "String",
    ],
    Difficulty.Easy,
    3,
  );

  // 4
  quiz.addQuestions(
    "Which keyword is used for inheritance?",
    [
      "implements",
      "extends",
      "with",
      "abstract",
    ],
    Difficulty.Medium,
    2,
  );

  // 5
  quiz.addQuestions(
    "What does Future represent?",
    [
      "A loop",
      "A value available later",
      "A class",
      "A list",
    ],
    Difficulty.Medium,
    2,
  );

  // 6
  quiz.addQuestions(
    "Which keyword is used with asynchronous functions?",
    [
      "async",
      "static",
      "late",
      "final",
    ],
    Difficulty.Medium,
    1,
  );

  // 7
  quiz.addQuestions(
    "What does where() do?",
    [
      "Transforms data",
      "Filters data",
      "Deletes data",
      "Sorts data",
    ],
    Difficulty.Hard,
    2,
  );

  // 8
  quiz.addQuestions(
    "What does map() usually do?",
    [
      "Transforms elements",
      "Deletes elements",
      "Stops a loop",
      "Creates a class",
    ],
    Difficulty.Hard,
    1,
  );

  // 9
  quiz.addQuestions(
    "Which constructor can return an existing object?",
    [
      "Named constructor",
      "Factory constructor",
      "Default constructor",
      "Abstract constructor",
    ],
    Difficulty.Hard,
    2,
  );

  // 10
  quiz.addQuestions(
    "Which symbol makes a variable nullable?",
    [
      "!",
      "?",
      "??",
      "?.",
    ],
    Difficulty.Easy,
    2,
  );

  print("Total questions: ${quiz.getTotalQuestions(null)}");

  print("\n========== ADD PLAYERS ==========");

  Player hussein = quiz.addPlayer("Hussein");
  Player ahmad = quiz.addPlayer("Ahmad");

  print("Players added successfully.");

  print("\n========== FIND QUESTION ==========");

  var question = quiz.findQuestionById(0);

  if (question != null) {
    print("Found question:");
    print(question.question);
  } else {
    print("Question not found.");
  }

  print("\n========== INVALID QUESTION ==========");

  var invalidQuestion = quiz.findQuestionById(999);

  if (invalidQuestion == null) {
    print("Invalid question correctly returned null.");
  }

  print("\n========== DIFFICULTY FILTER ==========");

  var easyQuestions = quiz.getQuestionsByDifficulty(
    Difficulty.Easy,
  );

  print("Easy questions: ${easyQuestions.length}");

  var mediumQuestions = quiz.getQuestionsByDifficulty(
    Difficulty.Medium,
  );

  print("Medium questions: ${mediumQuestions.length}");

  var hardQuestions = quiz.getQuestionsByDifficulty(
    Difficulty.Hard,
  );

  print("Hard questions: ${hardQuestions.length}");

  print("\n========== CHECK ANSWER ==========");

  // Correct answer
  quiz.checkAnswer(hussein, 1, 0);

  // Wrong answer
  quiz.checkAnswer(hussein, 2, 0);

  print("\n========== INVALID ANSWER ==========");

  quiz.isValidAnswer(0);
  quiz.isValidAnswer(5);
  quiz.isValidAnswer(-1);

  print("\n========== PLAYER RESULT ==========");

  print("Hussein correct: ${quiz.getCorrectAnswers(hussein)}");
  print("Hussein wrong: ${quiz.getWrongAnswers(hussein)}");
  print("Hussein score: ${quiz.getScore(hussein)}");

  print("\n========== PLAYER STATISTICS ==========");

  quiz.statistics(hussein, null);

  print("\n========== ALL PLAYERS ==========");

  quiz.showPlayers();

  print("\n========== SHUFFLE ==========");

  quiz.readimQusetin();

  print("Questions shuffled successfully.");

  print("\n========== START QUIZ ==========");

  print("Now the interactive quiz will start.");
  print("Enter answers from 1 to 4.");
  print("Try invalid inputs like: abc, 0, 5, -1");
  print("");

  quiz.startQuiz(hussein, null);

  print("\n========== FINAL STATISTICS ==========");

  quiz.statistics(hussein ,null);
}