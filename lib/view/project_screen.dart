import 'package:flutter/material.dart';
import 'package:todolist/model/project_model.dart';
import 'package:todolist/view/add_task_screen.dart';

import 'utils/labels.dart';
import 'widget/project_view.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key, required this.projectModel});
  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          collapsedHeight: 150,
          expandedHeight: 435, // Set the desired expanded height
          floating: true, // AppBar will float on scroll
          pinned: true, // AppBar will remain pinned at the top
          flexibleSpace: SafeArea(
            child: LayoutBuilder(
              builder: (p0, p1) {
                return Container(
                  height: 435,
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 400,
                        child: Hero(
                          tag: 'project-view',
                          child: ProjectTile(
                            projectModel: projectModel,
                            optionEnable: false,
                          ),
                        ),
                      ),
                      if (p1.maxHeight >= 250)
                        Positioned(
                            child: GestureDetector(
                              onTap: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => NewTaskScreen(),
                                    ));
                              }),
                              child: Hero(
                                tag: 'add-task',
                                child: Center(
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: Color(0xffbe2e7e5),
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            bottom: 0,
                            width: width)
                    ],
                  ),
                );
              },
            ),
          ),
          backgroundColor: Colors.white,
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              SizedBox(
                height: 500,
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    ListTile(
                      title: Text("Create a presentation"),
                      leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.black26))),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Divider(),
                    ),
                    ListTile(
                      title: Text("Create a presentation"),
                      leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.black26))),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "completed",
                  style: LabelStyle.lightsubheading,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: 500,
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ListTile(
                        title: Text("Create a presentation"),
                        leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.black26))),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(),
                      ),
                      ListTile(
                        title: Text("Create a presentation"),
                        leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.black26))),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ],
    ));
  }
}
