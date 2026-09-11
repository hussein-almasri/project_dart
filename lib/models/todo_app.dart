import 'to_do_manager.dart';
void main(){
  TodoManager todoManager =TodoManager();
  todoManager.addTask("Study Dart", "description") ;
  todoManager.addTask("Study  OOP", "description") ;
  todoManager.addTask("Learn  Flutter", "description");
  print("==========");
      todoManager.showTasks();

  todoManager.completeTask(1);
  todoManager.completeTask(2) ;
    todoManager.showCompletedTasks();
    todoManager.showPendingTasks();
    print("================");
    todoManager.findtask(1);
    print(todoManager.getTotalTasks());
    print(todoManager.getCompletedTask());

    var ser =todoManager.searchTasks("stuDy") ;
    for(var task in ser){
      String status = task.isCompleted ? "Completed" :"Pending";
      print("${task.id} | ${task.title} | ${task.description} ${status} ");
    }
    print(todoManager.getPendingTask());
  }
 