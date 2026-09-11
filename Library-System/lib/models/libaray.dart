import 'Book.dart';
import 'category.dart';
import 'member.dart';

class Libray {
  
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
  void removeBook(int id){
    _books.removeWhere((book)=> book.isAvailable && book.id ==id);
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
  void removeMember({required int id}){
    _members.removeWhere((member)=> member.id ==id);
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

void main(){
  Libray libray =Libray();
  libray.addBook("", "auther", Category.History);
    // libray.showbook();
    print(libray.findBook(0));
    // libray.showbook();
  libray.addmember("husein", "huu");
  libray.showMember();
  libray.removeMember(id: 10010);
  libray.showMember();
  print(libray.findMember(1000));

}