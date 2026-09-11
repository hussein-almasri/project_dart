
import 'category.dart';
class Book {
  static int _nextId =0 ;

  final int _id ;
  final String title ;
  final String auther ;
  final Category category ;
  bool isAvailable = true ;

  Book(
        {
      required this.title,
      required this.auther,
      required this.category
       }
    ) : _id =_nextId ++;
  
  // Return Book
   bool returnBook(){
    if(!isAvailable){
        isAvailable = true ;
      return true;
    }
    print("It is indeed available.");
    return false ;
  }
  
  // Borrow Book
  bool borrowBook(){
    if(isAvailable){
      isAvailable = false ;
      return  true;
    }
    print("Unfortunately, the book is borrowed; check for another one.");
    return false ;
  }

  @override
  String toString(){
    return "$_id | $title |$auther |$category |$isAvailable";
  }

}