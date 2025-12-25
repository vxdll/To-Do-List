import 'package:flutter/material.dart';
import 'package:to_do_list/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.indigo[100],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Ввод текста пользователем
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Введите задачу",
              ),
            ),

            // Кнопки: сохранить и отменить
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Кнопка сохранить
                MyButton(text: "Добавить", onPressed: onSave),

                const SizedBox(width: 8),

                // Кнопка отмены
                MyButton(text: "Отменить", onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
