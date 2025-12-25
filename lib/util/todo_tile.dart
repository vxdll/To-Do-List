import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Внешние отступы
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red.shade500,
              borderRadius: BorderRadius.circular(10),
            ),
          ],
        ),
        child: Container(
          // Отступы внитри
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              // Checkbox
              Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
                side: BorderSide(color: Colors.white),
              ),

              //Наименование задачи
              Text(
                taskName,
                style: TextStyle(
                  color: Colors.white,
                  decoration: taskCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
            ],
          ),
          // Стилизация контейнера
          decoration: BoxDecoration(
            color: Colors.indigo[700],
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
