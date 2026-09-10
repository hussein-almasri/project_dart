import 'task.dart';

class TodoManager {
  List<Task> _tasks = [];

  // add Task 
  Task addTask(
    String title,
    String description ,
  ){
    Task task =Task(title, description);
    _tasks.add(task);    
    return task ;
  }

  // Remove Task
  void removetask(int id){
    for(Task task in _tasks){
        if(task.id == id){
          _tasks.remove(task);
          return ;
        }
    }
  print("Invalid Id In List Of Task");
  }

  //completeTask 
   void completeTask(int id){
    for(Task task in _tasks){
      if(task.id ==id){
        if(task.isCompleted){
          print("Task is already completed");
          return ;
        }
        else{
          task.complete();
          print("Task completed successfully.");
          return ;
        }
      }
    }
   print("Invalid Id In List Of Task");

      }
    // Show All Task 
  void showTasks(){
    for(Task task in _tasks){
      String status =task.isCompleted ? "Completed": "Pending";
      print("${task.id} |${task.title} |${task.description} | ${status}");
    }
  }
}
