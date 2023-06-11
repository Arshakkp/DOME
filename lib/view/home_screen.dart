import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/controller/project_controller.dart';
import 'package:todolist/model/project_model.dart';
import 'package:todolist/view/project_screen.dart';
import 'package:todolist/view/widget/alert_box.dart';

import 'widget/circleAvatar.dart';
import 'utils/labels.dart';
import 'widget/project_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    addProject(ProjectModel projectModel) {
      Provider.of<ProjectController>(context, listen: false)
          .addProject(project: projectModel);
    }

    var totalProject =
        Provider.of<ProjectController>(context, listen: false).projects.length;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              ProjectModel _projectModel = ProjectModel(
                  id: DateTime.now().toString(), desc: "", title: "");
              return AlertBox.addAlertDialog(
                context: context,
                onAdd: () {
                  addProject(_projectModel);
                  Navigator.pop(context);
                },
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          onChanged: (value) {
                            _projectModel.title = value;
                          },
                          decoration: const InputDecoration(
                              label: Text("Title"),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 5)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                            onChanged: (value) {
                              _projectModel.desc = value;
                            },
                            decoration: const InputDecoration(
                                label: Text("Description"),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 5))),
                      ),
                    ]),
              );
            },
          );
        },
        backgroundColor: Colors.amber,
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your \nProject($totalProject)",
                  style: LabelStyle.heading,
                ),
                const SizedBox(
                  height: 10,
                ),
                Consumer<ProjectController>(
                  builder: (context, value, _) {
                    return SizedBox(
                      height: height * .85,
                      child: ListView.builder(
                        itemCount: value.projects.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => ProjectScreen(
                                              projectModel:
                                                  value.projects[index],
                                            ))));
                              },
                              child: ProjectTile(
                                optionEnable: true,
                                projectModel: value.projects[index],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
