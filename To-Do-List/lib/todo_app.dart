import 'models/to_do_manager.dart';
import 'models/task.dart';
void main(){
  TodoManager manager = TodoManager();

  print("========== ADD TASKS ==========");

  Task task1 = manager.addTask(
    "Learn Dart",
    "Study classes and objects",
  );

  Task task2 = manager.addTask(
    "Practice Flutter",
    "Build a small Flutter app",
  );

  Task task3 = manager.addTask(
    "Read Book",
    "Read 20 pages",
  );
  print(task3);
  print("Task 1 ID: ${task1.id}");
  print("Task 2 ID: ${task2.id}");
  print("Task 3 ID: ${task3.id}");

  print("\n========== ALL TASKS ==========");
  manager.showTasks();

  print("\n========== COMPLETE TASK ==========");
  manager.completeTask(task1.id);

  print("\n========== COMPLETE SAME TASK AGAIN ==========");
  manager.completeTask(task1.id);

  print("\n========== COMPLETED TASKS ==========");
  manager.showCompletedTasks();

  print("\n========== PENDING TASKS ==========");
  manager.showPendingTasks();

  print("\n========== FIND EXISTING TASK ==========");
  Task? foundTask = manager.findTask(task2.id);

  if (foundTask != null) {
    print(
      "Found: ${foundTask.id} | "
      "${foundTask.title} | "
      "${foundTask.description}",
    );
  } else {
    print("Task not found.");
  }

  print("\n========== FIND INVALID TASK ==========");
  Task? notFound = manager.findTask(999);

  if (notFound != null) {
    print("Found: ${notFound.title}");
  } else {
    print("Task not found.");
  }

  print("\n========== SEARCH TASKS ==========");

  List<Task> searchResult = manager.searchTasks("dart");

  if (searchResult.isEmpty) {
    print("No tasks found.");
  } else {
    for (Task task in searchResult) {
      print("${task.id} | ${task.title}");
    }
  }

  print("\n========== SEARCH WITH NO MATCH ==========");

  List<Task> noSearchResult = manager.searchTasks("Java");

  if (noSearchResult.isEmpty) {
    print("No tasks found.");
  } else {
    for (Task task in noSearchResult) {
      print("${task.id} | ${task.title}");
    }
  }

  print("\n========== STATISTICS ==========");

  print("Total tasks: ${manager.getTotalTasks()}");
  print("Completed tasks: ${manager.getCompletedTask()}");
  print("Pending tasks: ${manager.getPendingTask()}");

  print("\n========== REMOVE TASK ==========");

  manager.removeTask(task3.id);

  print("\n========== TASKS AFTER REMOVE ==========");
  manager.showTasks();

  print("\n========== REMOVE INVALID ID ==========");

  manager.removeTask(999);

  print("\n========== FINAL STATISTICS ==========");

  print("Total tasks: ${manager.getTotalTasks()}");
  print("Completed tasks: ${manager.getCompletedTask()}");
  print("Pending tasks: ${manager.getPendingTask()}");
}