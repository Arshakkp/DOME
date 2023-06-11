import 'package:todolist/model/task_model.dart';

class ProjectModel {
  String id;
  String title;
  String desc;
  List<TaskModel>? tasks;
  ProjectModel(
      {required this.id, required this.desc, this.tasks, required this.title});
}
