import 'to_do_manager.dart';
void main(){
  TodoManager todoManager =TodoManager();
  todoManager.addTask("Study Dart", "description") ;
  todoManager.addTask("Practice OOP", "description") ;
  todoManager.addTask("Learn Flutter", "description");
  print("==========");
  todoManager.completeTask(2);
    todoManager.completeTask(2);
  // todoManager.completeTask(1);
  }
 