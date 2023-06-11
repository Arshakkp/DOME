import 'package:flutter/material.dart';

class AlertBox {
  static AlertDialog addAlertDialog(
          {required Widget child,
          required VoidCallback onAdd,
          required BuildContext context}) =>
      AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        title: const Text("Add Task"),
        contentPadding: const EdgeInsets.all(3),
        content: child,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  onPressed: (() {
                    Navigator.pop(context);
                  }),
                  child: const Text(
                    "Cancel",
                    style: TextStyle(fontSize: 18),
                  )),
              ElevatedButton(
                  onPressed: onAdd,
                  child: const Text(
                    "Add",
                    style: TextStyle(fontSize: 18),
                  ))
            ],
          )
        ],
      );
}
