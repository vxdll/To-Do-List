import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  final _myBox = Hive.box('mybox');

  // Первые задачи при первом открытии приложения. Чтобы ознакомить с приложением
  void createInitialData() {
    toDoList = [
      ["Вот так выглядит записанная задача!", false],
      ["Свайпни влево, чтобы удалить!", false],
      ["Нажми кнопку внизу, чтобы добавить!", false],
    ];
  }

  // Подгрузка БД
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // Обновление БД
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
