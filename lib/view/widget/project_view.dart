import 'package:flutter/material.dart';
import 'package:todolist/model/project_model.dart';

import 'package:todolist/view/widget/tasksMeter.dart';

import '../utils/labels.dart';

class ProjectTile extends StatelessWidget {
  const ProjectTile(
      {super.key, required this.optionEnable, required this.projectModel});
  final bool optionEnable;
  final ProjectModel projectModel;

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
              : const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
        ),
        padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
                child: Text(
                  projectModel.title,
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
