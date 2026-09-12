import 'difficulty.dart';
class Question {
  
  static int _nextId =0  ;

  final int  _id ;
  final String question ;
  final List<String> options ;
  final int  correctAnswer  ;
  final Difficulty difficulty ;
  
  int get id =>_id;
  Question(
      this.question ,
      this.options ,
      this.difficulty ,
      this.correctAnswer
       ) :_id =_nextId++ ;


  bool isCorrectAnswer(int answer){
    if(correctAnswer == answer){
      return true ;
    }
    return false ;
  }

  
}