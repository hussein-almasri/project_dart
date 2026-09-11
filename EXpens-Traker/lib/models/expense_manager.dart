import 'category.dart';
import 'expense.dart';
class ExpenseManager {

  List<Expense> _expenses =[];
  List<Expense> get expenses =>List.unmodifiable(_expenses) ;
  // Add Expense 
  Expense ? addExpense(String title ,double amount , Category category){
      if(title.isNotEmpty && amount>0){
      Expense expense =Expense(title, amount ,category);
        _expenses.add(expense);
        return expense ;
    }
    print("There is something wrong ");
    return null ;
  }

  // remove expense
  void removeExpense(int id){
    for(var expense in _expenses){
        if(expense.id == id){
          _expenses.remove(expense);
          print("Expense removed successfully.");
          return ;
        }
    }
    print("Expense not found..");
 
  }
  
  // Find Expense
  Expense? findExpense(int id){
    for(var expense in _expenses){
        if(expense.id == id){
          return expense ;
        }
    }
    return null;
  } 

  //Show All Expenses 
  void showExpenses(){
    if(_expenses.isEmpty){
      print("No expenses found.");
      return ;
    }
    for(var expense in _expenses){
      print("${expense.id} | ${expense.title} | ${expense.amount} |${expense.category} |${expense.dateTime}");
    }
  }

  //Filter By Category 
  List<Expense> filterByCategory(Category category) {
    List<Expense>filter = _expenses.where((expense)=> expense.category == (category)).toList();
    return filter ;
  }

  //searchExpenses
  List<Expense> searchExpenses(String keyword){
    List<Expense>searchResult =_expenses.where((expense)=> expense.title.toUpperCase().contains(keyword.toUpperCase())).toList();
    return searchResult ;
  }

  // Get Total
  double getTotal(){
  return  _expenses.fold(0, (total , expense)=> total + expense.amount );
  }
  
  // Get Total By Category 
 double getTotalByCategory (Category category){
    return _expenses.where((expense)=>expense.category ==category).fold(0, (total , expense)=> total +expense.amount);
 }
  
  // Get Expense Count
    int getExpenseCount(){
      return  _expenses.length;
    }  
  
  //Get Average Expense
  double getAverageExpense(){
    if(_expenses.isEmpty){
      return 0 ;
    }
    return getTotal() / _expenses.length;
  }

 // remove All Expenses 
  void removeAllExpenses(){
    _expenses.clear();
  }

 }


