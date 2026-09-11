import 'dart:math';

import 'categroy.dart';
import 'expens.dart';
class ExpensManager {

  List<Expens> _expens =[];
  
  // Add Expens 
  void addExpens(String title ,double amount , Categroy categroy){
    Expens expens =Expens(title, amount ,categroy);
      _expens.add(expens);
  }

  // remov expens
  void removExpens(int id){
    for(var expens in _expens){
        if(expens.id == id){
          _expens.remove(expens);
          print("Expense removed successfully.");
          return ;
        }
    }
    print("Expense not found..");
 
  }
  
  // Find Expens
  Expens ? findExpens(int id){
    for(var expens in _expens){
        if(expens.id == id){
          return expens ;
        }
    }
    return null;
  } 

  //Show All Expans 
  void showExpans(){
    if(_expens.isEmpty){
      print("No expenses found.");
      return ;
    }
    for(var expens in _expens){
      print("${expens.id} | ${expens.title} | ${expens.amount} |${expens.categroy} |${expens.dateTime}");
    }
  }

  //Filter By Category 
  List<Expens> filterByCategory(Categroy categroy) {
    List<Expens>filter = _expens.where((expens)=> expens.categroy == (categroy)).toList();
    return filter ;
  }

  //searchExpenses
  List<Expens> searchExpenses(String keyword){
    List<Expens>searchResult =_expens.where((expens)=> expens.title.toUpperCase().contains(keyword.toUpperCase())).toList();
    return searchResult ;
  }

  // Get Total
  double getTotal(){
  return  _expens.fold(0, (Totole , expans)=> Totole + expans.amount );
  }
  
  // Get Total By Category 
 double getTotalByCategory (Categroy categroy){
    return _expens.where((expans)=>expans.categroy ==categroy).fold(0, (totole , expans)=> totole +expans.amount);
 }
  
  // Get Expans Count
    int getExpansCount(){
      return  _expens.length;
    }  
  
  //Get Avg Expans
  double getAvgExpans(){
    return getTotal() / _expens.length;
  }

 // remove All Expans 
  void removAllExpens(){
    
  }
  
 }


void main(){
  ExpensManager expensManager =ExpensManager();
  expensManager.addExpens("title", 0, Categroy.Food);
  expensManager.addExpens("title",0, Categroy.Food);
  // expensManager.showExpans();
  // print(expensManager.filterByCategory(Categroy.Bills));
  // expensManager.removExpens(0);
  // expensManager.showExpans();
  // print(expensManager.searchExpenses("TiLe")) ;
  print(expensManager.getTotal());
  print(expensManager.getTotalByCategory(Categroy.Food));
  print(expensManager.getExpansCount());
  print(expensManager.getAvgExpans());
}