
class Player {

  final String name ;
  int score = 0 ;
  int correctAnswer =0 ;
  int wrongAnswer =0 ;
  
  Player(this.name);

  void correct(){
    correctAnswer ++ ;
  }

  void wrong(){
    wrongAnswer ++ ;
  }
}