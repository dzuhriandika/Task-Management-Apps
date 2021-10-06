import 'package:flutter_auth/model/task.dart';
import 'package:http/http.dart' show Client;

class ApiService {
  final String baseUrl = "https://api.sheety.co/39ed35af0f13a0788bddf4a354c3b0fc?_raw=1";
  Client client = Client();

  Future<List<Task>> getTasks() async {
    final response = await client.get("https://sheet.best/api/sheets/d4fcab00-e8a9-4267-bcc0-f192b5efc57d?_raw=1");
    if (response.statusCode == 200) {
      return taskFromJson(response.body);
    } else {
      return null;
    }
  }
    Future<bool> createTask(Task data) async {
    final response = await client.post(
      "https://sheet.best/api/sheets/d4fcab00-e8a9-4267-bcc0-f192b5efc57d?_raw=1",
      headers: {"content-type": "application/json"},
      body: taskToJson(data),
    );
    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> updateTask(Task data) async {
    final response = await client.put(
      "$baseUrl/${data.id}",
      headers: {"content-type": "application/json"},
      body: taskToJson(data),
    );
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> deleteTask(int id) async {
    final response = await client.delete(
      "$baseUrl/$id",
      headers: {"content-type": "application/json"},
    );
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}