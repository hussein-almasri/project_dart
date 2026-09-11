import 'Book.dart';
class Member {
  
  static int _nextId =1000;

  final int id ;
  final String name ;
  final String email ;
  List<Book> _memberBorrow =[];
  
  // grtter
  List<Book>get memberBorrow => List.unmodifiable( _memberBorrow);
  
  Member({
    required this.name,
    required this.email}
  ) : id = _nextId++;

  // Add Borrow Book 
  void addBorrowBook(Book book){
      _memberBorrow.add(book);
  }
  
  // Remov Borrow Book  
  void removBorrowBook(Book book){
      _memberBorrow.remove(book);
  }
  
  void showBorrowBook(){
    for(var book in _memberBorrow){
      print(book);
    }
  }
  @override
  String toString(){
    return "$id | $name |$email ";
  }

}