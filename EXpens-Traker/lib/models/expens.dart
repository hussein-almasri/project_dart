import 'categroy.dart';
class Expens {
  
  static int _nextId =0 ; 
  
  int id = 0 ;
  final String title ;
  double amount ;
  final DateTime _dateTime =DateTime.now() ;
  Categroy categroy ;
  Expens(
    this.title ,
    this.amount ,
    this.categroy
    ) : id =_nextId ++ ; 
    DateTime get dateTime =>_dateTime;
    @override
    String toString(){
      return "$id  | $title | $amount | $categroy  |$_dateTime " ;
    }

}