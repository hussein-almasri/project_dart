
import 'difficulty.dart';
import 'player.dart';
import 'question.dart';
import 'dart:io';
class Quiz {

  List<Question> _question= [];
  List<Player> _players = [];

  // Add Questiona
  void addQuestions( String question , List<String>options ,  Difficulty difficulty ,int correctAnswer){
    if(question.isNotEmpty && options.length ==4 && options.isNotEmpty && correctAnswer >=1 && correctAnswer <=4 ){
    Question questions =Question(question, options, difficulty, correctAnswer) ;
    _question.add(questions) ;
      return ;
    }
    print("SomeThing Is Wrong ") ;
  }
 
  // Add Player 
  Player addPlayer(String name){
    Player player =Player(name) ;
    _players.add(player);
    return player ;
  }

  // Random Qusetions
  void  readimQusetin (){
    _question.shuffle();
}
  
  // The correct answer is an increase.
  void increaseCorrect(Player player){
    player.correct();
  }
  
  // The wrong answer is an increase
    void increaseWrong(Player play){
      play.wrong() ;
    }
  
  // Chick Id IS valide 
  bool isValidAnswer(int playerAnswer){
    if(playerAnswer >= 1 && playerAnswer <=4){
      return true ;
    }
    print("You Can't Choes This Namber $playerAnswer");
    return false ;
  }
  
  // find Qusetions By ID 
  Question ?findQuestionById(int id){
    return _question.where((Qid)=> Qid.id ==id).firstOrNull ;
  }
  
  // Chick Answer 
  bool checkAnswer(Player player, int answer, int id) {
    Question? question = findQuestionById(id); 
    if (question == null) {
      print("Question not found.");
      return false;
    }

    if (question.isCorrectAnswer(answer)) {
      print(" Correct Answer!");
      increaseCorrect(player);
      return true;
    } else {
      print("Wrong Answer!");
      increaseWrong(player);
      return false;
    }
  }
  
  //Question Filtering 
  List<Question> getQuestionsByDifficulty(Difficulty difficulty) {
    return _question.where((q) => q.difficulty == difficulty).toList();
  }

  // Get Total Questions
  int getTotalQuestions(Difficulty ? difficulty){
    if(difficulty ==null){
      return _question.length;
    }
    return   _question.where((q)=> q.difficulty ==difficulty).length;
  }

  //  GetCorrect Answers
  int getCorrectAnswers(Player player){
    return player.correctAnswer ;
  }
  //  get Wrong Answers
  int getWrongAnswers(Player player){
    return player.wrongAnswer ;
  }
  // get Score
  double getScore(Player player){
    return player.calculationScore();
  }
  // Statistics
  void statistics(Player player , Difficulty ? difficulty ){
    print("Total Questions : ${getTotalQuestions(difficulty)}");
    print(" Correct Answers : ${getCorrectAnswers(player)} ") ;
    print(" Wrong Answers : ${getWrongAnswers(player)} ") ;
    print(" Score : ${getScore(player)} ") ;
    
  }
  // Show All  Players 
  void showPlayers(){
    for(var player in _players){
      print("${player.name} | ${player.score} ${player.correctAnswer} | ${player.wrongAnswer}");
    }
  }


  void startQuiz(Player player, Difficulty? selectedDifficulty) {
      List<Question> activeQuestions;
      
      if (selectedDifficulty != null) {
        activeQuestions = getQuestionsByDifficulty(selectedDifficulty);
      } else {
        activeQuestions = List.from(_question); 
      }
      activeQuestions.shuffle();

      for(var e in activeQuestions){
        print(e.question);
        print(e.options);
        print("Enter Your Ansers");
        while(true){
          String? input = stdin.readLineSync();
          int?  answer = int.tryParse(input?? '');
          if (answer == null || !isValidAnswer(answer)) {
          } else {
            checkAnswer(player, answer, e.id);
            break ;
          }  
        }
      }
      print("The quiz is over.");
      print("Final Result");
      print("Correct : ${getCorrectAnswers(player)}");
      print("Wrong : ${getWrongAnswers(player)}");
      print("Score  : ${getScore(player)}%");
      statistics(player,null );
    }
  }

void main(){

  Quiz quiz =Quiz();
  quiz.addQuestions("sdas", ["1", "2", "3 ", "4"], Difficulty.Easy, 1);
  quiz.addQuestions("wha", ["1", "2", "3 ", "4"], Difficulty.Hard, 1);
 
  quiz.startQuiz(quiz.addPlayer("huuse "), Difficulty.Easy);

}
