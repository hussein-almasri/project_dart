

import 'dart:math';

import 'difficulty.dart';
import 'player.dart';
import 'question.dart';
class Quiz {

  List<Question> _question= [];
  List<Player> _players = [];
  List<Question> _questionEasy= [];
  List<Question> _questionMedium= [];
  List<Question> _questionHard= [];
  // Add Questiona
  void addQuestions( String question , List<dynamic>options ,  Difficulty difficulty ,int correctAnswer){
      if(difficulty == Difficulty.Easy){
      Question questions =Question(question, options, difficulty, correctAnswer) ;
      _question.add(questions);
      _questionEasy.add(questions);
      return ;
      }
      if(difficulty == Difficulty.Medium){
      Question questions =Question(question, options, difficulty, correctAnswer) ;
      _question.add(questions);
      _questionMedium.add(questions);
      return ;
      }
      if(difficulty == Difficulty.Hard){
      Question questions =Question(question, options, difficulty, correctAnswer) ;
      _question.add(questions);
      _questionHard.add(questions);
      return ;
      }

  }
 
  // Add Player 
  void addPlayer(String name){
    Player player =Player(name) ;
    _players.add(player);
  }

  // Random Qusetions
  Question  readimQusetin (Difficulty difficulty){
    
    if(difficulty ==Difficulty.Easy){
      final random = Random();
      int randomIndex = random.nextInt(_questionEasy.length);
      Question randomQuestion = _questionEasy[randomIndex];
      print( "${randomQuestion.question} \n  ${randomQuestion.options} ") ;
      return randomQuestion;
    }

      if(difficulty ==Difficulty.Medium){
      final random = Random();
      int randomIndex = random.nextInt(_questionMedium.length);
      Question randomQuestion = _questionMedium[randomIndex];
      print( "${randomQuestion.question} \n ${randomQuestion.options} ") ;
        return randomQuestion;
    }
      else{
      final random = Random();
      int randomIndex = random.nextInt(_questionHard.length);
      Question randomQuestion = _questionHard[randomIndex];
      print( "${randomQuestion.question}  \n ${randomQuestion.options} ") ;
      return randomQuestion;
    }
}
  
  // The correct answer is an increase.
  void increaseCorrect(Player player){
    player.correctAnswer ++ ;
  }
  
  // The wrong answer is an increase
    void increaseWrong(Player play){
      play.wrongAnswer ++ ;
    }
  
  // Chick Id IS valide 
  bool isvalideId(int playerAnswer){
    if(playerAnswer >= 1 && playerAnswer <=4){
      return true ;
    }
    print("You Can't Choes This Namber $playerAnswer");
    return false ;
  }
  
  // Chick Answer 
  bool chickAnswer(Player player, int answer , int id){
    List<Question> chick  = _question.where((question)=> question.id == id && question.correctAnswer == answer).toList() ;
    if(chick.isEmpty){
      print("rowng Anwser") ;
      increaseWrong(player);
      return false;
    }
    print("Carrecat Answeer");
    increaseCorrect(player);
    return true ;
  }
  
  
  void play(String namePlayer , Difficulty difficulty , int Answer){

    print("Enter Your Name ?") ;
    Player player =Player(namePlayer);
    print("The First Qusetion Is");
    Question readimQusetina= readimQusetin(difficulty);
    print("Enter Your Answer") ;
    if(!(isvalideId(Answer))){
      return ;
    }

    chickAnswer(player,Answer , readimQusetina.id);
    print("sdxa");
  }
  

  // Show All Questions
  void ShowQuestionsEassy(){
    for(var question in _questionEasy){
      print("${question.id} |${question.question} \n${question.options} \n ${question.difficulty} ");
    }
  }


  // Show All  Players 
  void showPlayers(){
    for(var player in _players){
      print("${player.name} | ${player.score} ${player.correctAnswer} | ${player.wrongAnswer}");
    }
  }

}

void main(){
  Quiz quiz=Quiz();
  quiz.addQuestions("what is 5 + 3", [1 , 2 , 5  ,6 ], Difficulty.Easy, 3);
  quiz.addQuestions("Hii", [1,2,3,4], Difficulty.Easy, 1);
  quiz.play("hussein" ,Difficulty.Easy ,1) ;
}
