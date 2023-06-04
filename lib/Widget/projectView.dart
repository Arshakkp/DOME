import 'package:flutter/material.dart';
import 'package:todolist/Widget/labels.dart';
import 'package:todolist/Widget/tasksMeter.dart';

class ProjectTile extends StatelessWidget {
  const ProjectTile({super.key, required this.optionEnable});
  final bool optionEnable;

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Container(
        height: 400,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: optionEnable
              ? BorderRadius.circular(
                  50,
                )
              : BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
        ),
        padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Text(
                  "Holiday in \nNorway",
                  style: LabelStyle.headingWithColor(Colors.white),
                ),
              ),
              const SizedBox(height: 50),
              const TaskMeter(),
              const SizedBox(
                height: 50,
              ),
              if (optionEnable)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.transparent.withOpacity(0.1),
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.transparent.withOpacity(0.1),
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
            ]),
      ),
    );
  }
}
