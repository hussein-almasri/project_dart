
class Player {

  final String name ;
  double score = 0 ;
  int correctAnswer =0 ;
  int wrongAnswer =0 ;

  Player(this.name);

  void correct(){
    correctAnswer ++ ;
  }

  void wrong(){
    wrongAnswer ++ ;
  }

  double calculationScore() {
    int total = correctAnswer + wrongAnswer;
    if (total == 0) {
      score = 0;
      return score ;
    }
    score = (correctAnswer / total) * 100;
    return score ;
  }

}