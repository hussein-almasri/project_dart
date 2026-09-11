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
          task.complete();
          print("Task completed successfully.");
          return ;
      }
    }
   print("Invalid Id In List Of Task");

      }
    // Show All Task 
  void showTasks(){
    if(_tasks.isNotEmpty){
      for(Task task in _tasks){
        String status =task.isCompleted ? "Completed": "Pending";
        print("${task.id} |${task.title} |${task.description} | ${status}");
      }
    }
    else {
      print("You Don't Have Any Task ");
    }
  }
  // show CompletedTasks
  void showCompletedTasks(){
    final taskCompelte = _tasks.where((task) => task.isCompleted ).toList();

    if(taskCompelte.isEmpty){
       print("You Don't Have Any Task Completed");
       return ;
    }
    for( var task in taskCompelte){
         String status = task.isCompleted ? "Completed": "Pending";
         print("${task.id} |${task.title} |${task.description} | ${status}") ;
      }
    }
    
  // showPendingTasks() 
  void showPendingTasks(){
    final tasksPending = _tasks.where((task)=> !task.isCompleted).toList();
    if(tasksPending.isEmpty){
      print("No Tasks Pending ");
    }
    for(var task in tasksPending){
      String status = task.isCompleted ? "Completed": "Pending";
      print("${task.id} |${task.title} |${task.description} | ${status}") ;
    }
  }
  // Find Task
  Task? findTask(int id){
    if(_tasks.isEmpty){
      print("You don't have Any Task ");
      return null;
    }
    for (var task in _tasks) {
      if(task.id ==id){
        return task;
      }
    }
      print("You don't Have This ID");
  }

  // get total Tasks
  
  int getTotalTasks(){
    return (_tasks.length);
  }

  // int get completedTasksCount
  int getCompletedTask(){
     final getCompleted = _tasks.where((task)=> task.isCompleted).toList();
    return (getCompleted.length) ;
  }

  //pendingTasksCount
  int getPendingTask(){
    final getpending = _tasks.where((task)=> !task.isCompleted).toList();
    return getpending.length ;
  }

  // List<Task> searchTasks(String keyword)
    List<Task> searchTasks(String keyword){
      List<Task>searchTask = _tasks.where((task)=> (task.title.toUpperCase().contains(keyword.toUpperCase()))).toList();
      return searchTask ;
    }

}

