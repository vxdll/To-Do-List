import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  const ToDoTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Внешние отступы
      padding: const EdgeInsets.all(25.0),
      child: Container(
        // Отступы внитри
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            // Checkbox
            Checkbox(value: value, onChanged: onChanged)

            //Наименование задачи
            Text("Создай обзор", style: TextStyle(color: Colors.white)),
          ],
        ),
        // Стилизация контейнера
        decoration: BoxDecoration(
          color: Colors.indigo[700],
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
