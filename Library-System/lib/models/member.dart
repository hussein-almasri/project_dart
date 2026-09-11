import 'Book.dart';
import 'category.dart';
class Member {
  
  static int _nextId =1000;

  final int _id ;
  final String name ;
  final String email ;
  List<Book> _books =[];
  
  // grtter
  List<Book>get books => List.unmodifiable(_books);
  
  Member({
    required this.name,
    required this.email}
  ) : _id = _nextId++;

  // Add Borrow Book 
  void addBorrowBook(Book book){
     if(book.borrowBook()){
      _books.add(book);
     }
  }
  
  // Remov Borrow Book  
  void removBorrowBook(Book book){
    if(book.returnBook()){
      _books.remove(book);
    }
  }
  
  void showBorrowBook(){
    for(var book in _books){
      print(book);
    }
  }
}