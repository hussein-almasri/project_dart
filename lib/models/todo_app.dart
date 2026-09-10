import 'to_do_manager.dart';
void main(){
  TodoManager todoManager =TodoManager();
  todoManager.addTask("Study Dart", "description") ;
  todoManager.addTask("Practice OOP", "description") ;
  todoManager.addTask("Learn Flutter", "description");
  todoManager.showTasks();
  print("==========");
  todoManager.completeTask(1);
  todoManager.completeTask(2);
  todoManager.showTasks();
  todoManager.removetask(0);
  todoManager.removetask(5);
  todoManager.showTasks();
}