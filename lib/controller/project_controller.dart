import 'package:flutter/cupertino.dart';
import 'package:todolist/model/project_model.dart';
import 'package:todolist/model/task_model.dart';

class ProjectController extends ChangeNotifier {
  final List<ProjectModel> _projects = [
    ProjectModel(
        id: "1",
        desc: "Its my first project",
        title: "DOME its my first project")
  ];
  addProject({required ProjectModel project}) {
    _projects.add(project);
    notifyListeners();
  }

  addTaskToProject({required String id, required TaskModel taskModel}) {
    var index = _projects.indexWhere((element) => element.id == id);
    _projects[index].tasks?.add(taskModel);
  }

  List<ProjectModel> get projects => _projects;
}
