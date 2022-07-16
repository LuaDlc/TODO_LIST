import 'package:flutter_mobx/flutter_mobx.dart';

part 'todo_controller.g.dart';

class TodoController extends _TodoControllerBase with _$TodoController {
  TodoController();
}

abstract class _TodoControllerBase with Store {
  TodoControllerBase();

 /* @observable
  String newTodoTitle = "";
  

  @action
  void setNewTodoTitle(String value) => newTodoTitle = value;

  @computed
  bool get isFormValid => newTodoTitle.isNotEmpty;

*/
}
