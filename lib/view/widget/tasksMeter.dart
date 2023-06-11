import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TaskMeter extends StatelessWidget {
  const TaskMeter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white)),
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(
              height: 30,
              width: 10,
              color: Colors.white,
            ),
          ]),
        ),
        const SizedBox(
          width: 7,
        ),
        Column(
          children: const [
            Text(
              "8/10",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              "Tasks",
              style: TextStyle(color: Colors.white),
            )
          ],
        )
      ],
    );
  }
}
