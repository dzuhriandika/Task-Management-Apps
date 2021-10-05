import 'dart:convert';

class Task {
  int id;
  String title;
  String description;

  Task({this.id = 1, this.title, this.description});

  factory Task.fromJson(Map<String, dynamic> map) {
    return Task(
        id: map["id"], title: map["title"], description: map["description"]);
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "title": title, "description": description};
  }

  @override
  String toString() {
    return 'Task{id: $id, title: $title, description: $description}';
  }

}

List<Task> taskFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<Task>.from(data.map((item) => Task.fromJson(item)));
}

String taskToJson(Task data) {
  final jsonData = data.toJson();
  return json.encode(jsonData);
}