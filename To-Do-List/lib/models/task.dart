
class Task {

  static int _nextId =0 ;
  final int id ;
  final String title ;
  final String description ;
  bool isCompleted = false;

  Task(
      this.title ,
      this.description ,
    ): id = _nextId ++; 

  void complete(){
    isCompleted =true ;
  }
  @override
  String toString(){
     String status = isCompleted ? "Completed" : "Pending";
     return "$id | $title | $description | $status";

  }

}