import 'models/Book.dart';
import 'models/category.dart';
import 'models/member.dart';
import 'models/libaray.dart';
void main() {
  final library = Libray();
  // ============================================================
  // EMPTY LIBRARY
  // ============================================================

  print("========== EMPTY LIBRARY ==========");

  library.showbook();
  library.showMember();

  print("Available books: ${library.getAvailableBooks().length}");
  print("Borrowed books: ${library.getBorrowedBooks().length}");
  print("Programming books: "
      "${library.getBooksByCategory(Category.Programming).length}");

  print("Find book: ${library.findBook(999)}");
  print("Find member: ${library.findMember(999)}");

  print("Search results: ${library.searchBooks("nothing").length}");

  library.statistics();

  // ============================================================
  // ADD BOOKS
  // ============================================================

  print("\n========== ADD BOOKS ==========");

  library.addBook(
    "Clean Code",
    "Robert Martin",
    Category.Programming,
  );

  library.addBook(
    "The Pragmatic Programmer",
    "David Thomas",
    Category.Programming,
  );

  library.addBook(
    "Harry Potter",
    "J.K. Rowling",
    Category.Novel,
  );

  library.addBook(
    "A Brief History of Time",
    "Stephen Hawking",
    Category.Science,
  );

  library.addBook(
    "The Art of War",
    "Sun Tzu",
    Category.History,
  );

  library.showbook();

  // ============================================================
  // ADD MEMBERS
  // ============================================================

  print("\n========== ADD MEMBERS ==========");

  library.addmember(
    "Hussein",
    "hussein@email.com",
  );

  library.addmember(
    "Ahmad",
    "ahmad@email.com",
  );

  library.addmember(
    "Omar",
    "omar@email.com",
  );

  library.showMember();

  // ============================================================
  // FIND EXISTING BOOK
  // ============================================================

  print("\n========== FIND EXISTING BOOK ==========");

  Book? foundBook = library.findBook(0);

  if (foundBook != null) {
    print("Found: $foundBook");
  } else {
    print("Book not found.");
  }

  // ============================================================
  // FIND INVALID BOOK
  // ============================================================

  print("\n========== FIND INVALID BOOK ==========");

  print("Result: ${library.findBook(999)}");

  // ============================================================
  // FIND EXISTING MEMBER
  // ============================================================

  print("\n========== FIND EXISTING MEMBER ==========");

  Member? foundMember = library.findMember(1000);
  if (foundMember != null) {
    print("Found: $foundMember");
  } else {
    print("Member not found.");
  }

  // ============================================================
  // FIND INVALID MEMBER
  // ============================================================

  print("\n========== FIND INVALID MEMBER ==========");

  print("Result: ${library.findMember(9999)}");

  // ============================================================
  // SEARCH BY TITLE
  // ============================================================

  print("\n========== SEARCH BY TITLE ==========");

  List<Book> titleResults = library.searchBooks("clean");

  for (var book in titleResults) {
    print(book);
  }

  // ============================================================
  // SEARCH BY AUTHOR
  // ============================================================

  print("\n========== SEARCH BY AUTHOR ==========");

  List<Book> authorResults = library.searchBooks("hawking");

  for (var book in authorResults) {
    print(book);
  }

  // ============================================================
  // CASE INSENSITIVE SEARCH
  // ============================================================

  print("\n========== CASE INSENSITIVE SEARCH ==========");

  List<Book> caseResults = library.searchBooks("CLEAN CODE");

  for (var book in caseResults) {
    print(book);
  }

  // ============================================================
  // SEARCH NO RESULT
  // ============================================================

  print("\n========== SEARCH NO RESULT ==========");

  List<Book> noSearchResults = library.searchBooks("Java");

  print("Results: ${noSearchResults.length}");

  // ============================================================
  // FILTER BY CATEGORY
  // ============================================================

  print("\n========== PROGRAMMING BOOKS ==========");

  List<Book> programmingBooks =
      library.getBooksByCategory(Category.Programming);

  for (var book in programmingBooks) {
    print(book);
  }

  print("Programming books: ${programmingBooks.length}");

  // ============================================================
  // AVAILABLE BOOKS
  // ============================================================

  print("\n========== AVAILABLE BOOKS ==========");

  for (var book in library.getAvailableBooks()) {
    print(book);
  }

  // ============================================================
  // BORROW BOOK
  // ============================================================

  print("\n========== BORROW BOOK ==========");

  // Hussein borrows Clean Code
  library.borrowBook(1000, 0);

  print("\nAfter borrowing:");

  library.showbook();

  // ============================================================
  // SHOW MEMBER BORROWED BOOKS
  // ============================================================

  print("\n========== HUSSEIN BORROWED BOOKS ==========");

  Member? hussein = library.findMember(1000);

  if (hussein != null) {
    hussein.showBorrowBook();
  }

  // ============================================================
  // TRY TO BORROW SAME BOOK AGAIN
  // ============================================================

  print("\n========== BORROW ALREADY BORROWED BOOK ==========");

  library.borrowBook(1001, 0);

  // ============================================================
  // BORROW ANOTHER BOOK
  // ============================================================

  print("\n========== BORROW SECOND BOOK ==========");

  library.borrowBook(1000, 1);

  print("\nHussein borrowed books:");

  if (hussein != null) {
    hussein.showBorrowBook();
  }

  // ============================================================
  // BORROW THIRD BOOK BY ANOTHER MEMBER
  // ============================================================

  print("\n========== ANOTHER MEMBER BORROWS ==========");

  library.borrowBook(1001, 2);

  // ============================================================
  // INVALID MEMBER BORROW
  // ============================================================

  print("\n========== INVALID MEMBER BORROW ==========");

  library.borrowBook(9999, 3);

  // ============================================================
  // INVALID BOOK BORROW
  // ============================================================

  print("\n========== INVALID BOOK BORROW ==========");

  library.borrowBook(1000, 9999);

  // ============================================================
  // BORROWED BOOKS
  // ============================================================

  print("\n========== BORROWED BOOKS ==========");

  for (var book in library.getBorrowedBooks()) {
    print(book);
  }

  // ============================================================
  // STATISTICS AFTER BORROWING
  // ============================================================

  print("\n========== STATISTICS AFTER BORROWING ==========");

  library.statistics();

  // ============================================================
  // REMOVE BORROWED BOOK
  // ============================================================

  print("\n========== REMOVE BORROWED BOOK ==========");

  library.removeBook(0);

  // ============================================================
  // REMOVE NON-EXISTING BOOK
  // ============================================================

  print("\n========== REMOVE INVALID BOOK ==========");

  library.removeBook(9999);

  // ============================================================
  // RETURN BOOK
  // ============================================================

  print("\n========== RETURN BOOK ==========");

  library.returnBook(1000, 0);

  print("\nAfter returning:");

  library.showbook();

  // ============================================================
  // CHECK MEMBER BORROWED BOOKS AFTER RETURN
  // ============================================================

  print("\n========== HUSSEIN BOOKS AFTER RETURN ==========");

  if (hussein != null) {
    hussein.showBorrowBook();
  }

  // ============================================================
  // NOW ANOTHER MEMBER CAN BORROW BOOK 0
  // ============================================================

  print("\n========== BORROW RETURNED BOOK ==========");

  library.borrowBook(1001, 0);

  // ============================================================
  // RETURN BOOK NOT BORROWED BY MEMBER
  // ============================================================

  print("\n========== RETURN BOOK NOT BORROWED BY MEMBER ==========");

  library.returnBook(1000, 0);

  // ============================================================
  // INVALID MEMBER RETURN
  // ============================================================

  print("\n========== INVALID MEMBER RETURN ==========");

  library.returnBook(9999, 0);

  // ============================================================
  // INVALID BOOK RETURN
  // ============================================================

  print("\n========== INVALID BOOK RETURN ==========");

  library.returnBook(1000, 9999);

  // ============================================================
  // REMOVE MEMBER WITH BORROWED BOOKS
  // ============================================================

  print("\n========== REMOVE MEMBER WITH BORROWED BOOKS ==========");

  library.removeMember(id: 1001);

  // ============================================================
  // RETURN BOOKS BEFORE REMOVING MEMBER
  // ============================================================

  print("\n========== RETURN MEMBER 2 BOOKS ==========");

  library.returnBook(1001, 0);
  library.returnBook(1001, 2);

  // ============================================================
  // REMOVE MEMBER WITHOUT BORROWED BOOKS
  // ============================================================

  print("\n========== REMOVE MEMBER ==========");

  library.removeMember(id: 1001);

  // ============================================================
  // REMOVE INVALID MEMBER
  // ============================================================

  print("\n========== REMOVE INVALID MEMBER ==========");

  library.removeMember(id: 9999);

  // ============================================================
  // REMOVE AVAILABLE BOOK
  // ============================================================

  print("\n========== REMOVE AVAILABLE BOOK ==========");

  library.removeBook(4);

  // ============================================================
  // FINAL BOOKS
  // ============================================================

  print("\n========== FINAL BOOKS ==========");

  library.showbook();

  // ============================================================
  // FINAL MEMBERS
  // ============================================================

  print("\n========== FINAL MEMBERS ==========");

  library.showMember();

  // ============================================================
  // FINAL STATISTICS
  // ============================================================

  print("\n========== FINAL STATISTICS ==========");

  library.statistics();
}