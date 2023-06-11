class TaskModel {
  String id;
  DateTime createdOn;
  DateTime completedOn;
  String title;
  String desc;
  bool isDone;
  TaskModel(
      {required this.id,
      required this.completedOn,
      required this.createdOn,
      required this.desc,
      required this.title,required this.isDone});
}
