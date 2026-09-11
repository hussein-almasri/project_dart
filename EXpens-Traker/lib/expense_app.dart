import 'models/expense_manager.dart';
import 'models/category.dart';
import 'models/expense.dart';
void main() {
  ExpenseManager manager = ExpenseManager();
  // ==========================================
  // EMPTY MANAGER
  // ==========================================

  print("========== EMPTY MANAGER ==========");

  manager.showExpenses();

  print("Total: ${manager.getTotal()}");
  print("Count: ${manager.getExpenseCount()}");
  print("Average: ${manager.getAverageExpense()}");

  Expense? emptyFind = manager.findExpense(999);

  if (emptyFind == null) {
    print("Find result: null");
  }

  List<Expense> emptyFilter =
      manager.filterByCategory(Category.Food);

  print("Food filter count: ${emptyFilter.length}");

  List<Expense> emptySearch =
      manager.searchExpenses("food");

  print("Search count: ${emptySearch.length}");

  // ==========================================
  // ADD EXPENSES
  // ==========================================

  print("\n========== ADD EXPENSES ==========");

  Expense? expense1 = manager.addExpense(
    "Burger",
    5.5,
    Category.Food,
  );

  Expense? expense2 = manager.addExpense(
    "Taxi",
    3.0,
    Category.Transport,
  );

  Expense? expense3 = manager.addExpense(
    "Book",
    15.0,
    Category.Shopping,
  );

  Expense? expense4 = manager.addExpense(
    "Electricity",
    50.0,
    Category.Bills,
  );

  Expense? expense5 = manager.addExpense(
    "Pizza",
    10.0,
    Category.Food,
  );

  print(expense1);
  print(expense2);
  print(expense3);
  print(expense4);
  print(expense5);

  // ==========================================
  // SHOW ALL
  // ==========================================

  print("\n========== ALL EXPENSES ==========");

  manager.showExpenses();

  // ==========================================
  // FIND EXISTING EXPENSE
  // ==========================================

  print("\n========== FIND EXISTING EXPENSE ==========");

  if (expense2 != null) {
    Expense? found = manager.findExpense(expense2.id);

    if (found != null) {
      print("Found: $found");
    } else {
      print("Expense not found.");
    }
  }

  // ==========================================
  // FIND INVALID EXPENSE
  // ==========================================

  print("\n========== FIND INVALID EXPENSE ==========");

  Expense? notFound = manager.findExpense(999);

  if (notFound == null) {
    print("Expense not found.");
  }

  // ==========================================
  // FILTER BY CATEGORY
  // ==========================================

  print("\n========== FILTER FOOD ==========");

  List<Expense> foodExpenses =
      manager.filterByCategory(Category.Food);

  for (Expense expense in foodExpenses) {
    print(expense);
  }

  print("Food count: ${foodExpenses.length}");

  // ==========================================
  // FILTER CATEGORY WITH NO EXPENSES
  // ==========================================

  print("\n========== FILTER HEALTH ==========");

  List<Expense> healthExpenses =
      manager.filterByCategory(Category.Health);

  print("Health count: ${healthExpenses.length}");

  // ==========================================
  // SEARCH EXISTING
  // ==========================================

  print("\n========== SEARCH PIZZA ==========");

  List<Expense> searchPizza =
      manager.searchExpenses("pizza");

  for (Expense expense in searchPizza) {
    print(expense);
  }

  // ==========================================
  // CASE INSENSITIVE SEARCH
  // ==========================================

  print("\n========== CASE INSENSITIVE SEARCH ==========");

  List<Expense> searchFood =
      manager.searchExpenses("FOOD");

  for (Expense expense in searchFood) {
    print(expense);
  }

  // ==========================================
  // SEARCH NO RESULT
  // ==========================================

  print("\n========== SEARCH NO RESULT ==========");

  List<Expense> searchJava =
      manager.searchExpenses("Java");

  if (searchJava.isEmpty) {
    print("No expenses found.");
  }

  // ==========================================
  // TOTAL
  // ==========================================

  print("\n========== TOTAL ==========");

  print("Total: ${manager.getTotal()}");

  // Expected:
  // 5.5 + 3 + 15 + 50 + 10 = 83.5

  // ==========================================
  // TOTAL BY CATEGORY
  // ==========================================

  print("\n========== FOOD TOTAL ==========");

  print(
    "Food total: ${manager.getTotalByCategory(Category.Food)}",
  );

  // Expected:
  // 5.5 + 10 = 15.5

  // ==========================================
  // EXPENSE COUNT
  // ==========================================

  print("\n========== EXPENSE COUNT ==========");

  print(
    "Expense count: ${manager.getExpenseCount()}",
  );

  // Expected: 5

  // ==========================================
  // AVERAGE
  // ==========================================

  print("\n========== AVERAGE ==========");

  print(
    "Average: ${manager.getAverageExpense()}",
  );

  // Expected:
  // 83.5 / 5 = 16.7

  // ==========================================
  // INVALID AMOUNT = 0
  // ==========================================

  print("\n========== INVALID AMOUNT ZERO ==========");

  Expense? zeroExpense = manager.addExpense(
    "Zero Expense",
    0,
    Category.Food,
  );

  if (zeroExpense == null) {
    print("Zero amount rejected.");
  }

  // ==========================================
  // INVALID AMOUNT = NEGATIVE
  // ==========================================

  print("\n========== INVALID AMOUNT NEGATIVE ==========");

  Expense? negativeExpense = manager.addExpense(
    "Negative Expense",
    -10,
    Category.Food,
  );

  if (negativeExpense == null) {
    print("Negative amount rejected.");
  }

  // ==========================================
  // INVALID TITLE
  // ==========================================

  print("\n========== INVALID TITLE ==========");

  Expense? emptyTitle = manager.addExpense(
    "",
    20,
    Category.Food,
  );

  if (emptyTitle == null) {
    print("Empty title rejected.");
  }

  // ==========================================
  // REMOVE EXPENSE
  // ==========================================

  print("\n========== REMOVE EXPENSE ==========");

  if (expense3 != null) {
    manager.removeExpense(expense3.id);
  }

  // ==========================================
  // SHOW AFTER REMOVE
  // ==========================================

  print("\n========== AFTER REMOVE ==========");

  manager.showExpenses();

  // ==========================================
  // REMOVE INVALID ID
  // ==========================================

  print("\n========== REMOVE INVALID ID ==========");

  manager.removeExpense(999);

  // ==========================================
  // FINAL STATISTICS
  // ==========================================

  print("\n========== FINAL STATISTICS ==========");

  print("Total: ${manager.getTotal()}");
  print("Count: ${manager.getExpenseCount()}");
  print("Average: ${manager.getAverageExpense()}");

  // ==========================================
  // REMOVE ALL
  // ==========================================

  print("\n========== REMOVE ALL ==========");

  manager.removeAllExpenses();

  // ==========================================
  // SHOW AFTER REMOVE ALL
  // ==========================================

  print("\n========== AFTER REMOVE ALL ==========");

  manager.showExpenses();

  print("Total: ${manager.getTotal()}");
  print("Count: ${manager.getExpenseCount()}");
  print("Average: ${manager.getAverageExpense()}");

  // ==========================================
  // TEST EMPTY AFTER REMOVE ALL
  // ==========================================

  print("\n========== EMPTY AFTER REMOVE ALL ==========");

  Expense? finalFind = manager.findExpense(1);

  if (finalFind == null) {
    print("No expense found.");
  }

  List<Expense> finalSearch =
      manager.searchExpenses("pizza");

  print("Search results: ${finalSearch.length}");

  List<Expense> finalFilter =
      manager.filterByCategory(Category.Food);

  print("Food results: ${finalFilter.length}");
}