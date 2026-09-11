import 'category.dart';
class Expense {
  
  static int _nextId =0 ; 
  
  final int id ;
  final String title ;
  final double _amount ;
  final DateTime _dateTime =DateTime.now() ;
  final Category category ;

  Expense(
    this.title ,
    this._amount ,
    this.category
    ) : id =_nextId ++ ; 
    DateTime get dateTime =>_dateTime;
    double get amount =>_amount ;
    @override
    String toString(){
      return "$id  | $title | $amount | $category  |$_dateTime " ;
    }

}