import 'Book.dart';
import 'category.dart';
import 'member.dart';

class Library {
  
  List<Book> _books =[];
  List<Member> _members =[];
  //getter
  List<Book> get books => List.unmodifiable(_books);
  List<Member> get members =>List.unmodifiable(_members);

  // Add Book
  void addBook( String title ,String auther ,Category category ){
    Book book =Book(title: title, auther: auther, category: category);
    _books.add(book);
  }

  // Remove Book By ID
 void removeBook(int id) {
  Book? bookToRemoved = findBook(id); 
  if (bookToRemoved == null) {
    print("Error: Book with ID $id not found.");
    return;
  }
  if (!bookToRemoved.isAvailable) {
    print("Cannot remove borrowed book"); 
    return;
  }
  _books.remove(bookToRemoved);
  print("Success: Book '${bookToRemoved.title}' has been removed.");
}

  //FInd Book By ID
  Book? findBook(int id){
    for(var book in _books){
      if(book.id ==id){
        return book ;
      }
    }
    return null ;
  }
  
  //Add Member 
  void addmember(String name ,String email){
    Member member =Member(name: name, email: email);
    _members.add(member);
  }

  //Remove Member  By ID
  void removeMember({required int id}) {
    Member? memberToRemove = findMember(id);
    if (memberToRemove == null) {
      print("Error: Member with ID $id not found.");
      return;
    }
    if (memberToRemove.memberBorrow.isNotEmpty) {
      print("Cannot remove member because they have borrowed books.");
      return;
    }
    _members.remove(memberToRemove);
    print("Success: Member '${memberToRemove.name}' has been removed.");
  }

  // Find Member By ID
    Member? findMember(int id){
    for (var member in _members){
      if(member.id == id){
          return member ;
      }
    }
    return null;
  }
  //Borrow Book
  void borrowBook(int memberId, int bookId){
    Member ? member = findMember(memberId);
    if(member == null){
      print("Error: Member with ID $memberId not found.");
      return ;
    }
    Book ? book = findBook(bookId);
    if(book ==null){
      print("Error: Book with ID $bookId not found.");
      return ;
    }
    if(!book.isAvailable){
      print("Error: Book '${book.title}' is already borrowed.");
      return ;
    }
    if(member.memberBorrow.contains(book)){
      print("Error: This member has already borrowed this book.");
      return ;
    }
    book.borrowBook();
    member.addBorrowBook(book);
    print("Success: Book '${book.title}' has been borrowed by ${member.name}.");
  }

  // Return Book
  void returnBook(int memberId, int bookId){
    Member ? member =findMember(memberId);
    if(member == null){
      print("Error: Member with ID $memberId not found .");
      return ;
    }
    Book ? book =findBook(bookId);
    if(book == null){
      print("Error: Book with ID $bookId not found");
      return ;
    }
    if(!member.memberBorrow.contains(book)){
      print("Error: This member did not borrow this book.");
      return ;
    }
    book.returnBook();
    member.removBorrowBook(book);
  }

  // Search
 List<Book> searchBooks(String keyword){
   List<Book> search =   _books.where((book)=> book.title.toUpperCase().contains(keyword.toUpperCase()) || book.auther.toUpperCase().contains(keyword.toUpperCase())).toList();
    return search ;
  }
 
  //Filtering
  // Get Available Books
  List<Book> getAvailableBooks(){
    return _books.where((book) => book.isAvailable).toList();
  }
 
 // Get Borrowed  Books
  List<Book> getBorrowedBooks(){
  return _books.where((book)=> !book.isAvailable).toList();
}

 // Get Books By Category 
  List<Book> getBooksByCategory(Category category){
  return _books.where((book)=> book.category ==category).toList();
}
  
  // Statistics
  void statistics(){
    print("totalBooks  :${_books.length}");
    int availableBooks = 0;
    for(var v in _books){
      if(v.isAvailable){
        availableBooks ++;
      }
    }
    print("availableBooks $availableBooks");
    int borrowedBooks =0;
    for(var v in _books){
      if(!v.isAvailable){
        borrowedBooks ++;
      }
    }
    print("borrowedBooks : $borrowedBooks") ;
    print("totalMembers : ${_members.length}");
  }

  // Show book
  void showbook(){
    for(var books in _books){
      print(" ${books.id} |${books.title} | ${books.auther} | ${books.category} | ${books.isAvailable}");
    }
  }

  // Show book
  void showMember(){
    for(var member in _members){
      print(" ${member.id} |${member.name} | ${member.email} ");
      }
  }
}