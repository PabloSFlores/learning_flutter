import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/database_conn_model.dart';

class DatabaseConnRepository {
  final String apiUrl;
  final String accessToken;

  DatabaseConnRepository({
    required this.apiUrl,
    required this.accessToken,
  });

  Future<void> createDatabaseConn(DatabaseConnModel databaseConnModel) async {
    final response = await http.post(Uri.parse('$apiUrl/databaseConn'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $accessToken',
        },
        body: jsonEncode(databaseConnModel.toJson()..remove('id')));

    if (response.statusCode != 200) {
      throw Exception('Failed to create database connection');
    }
  }

  Future<DatabaseConnModel> getDatabaseConn(String id) async {
    final response = await http.get(
      Uri.parse('$apiUrl/databaseConn/$id'),
      headers: <String, String>{
        'Authorization': 'Bearer $accessToken',
      },
    );

    if (response.statusCode == 200) {
      return DatabaseConnModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load database connection');
    }
  }

  Future<void> updateDatabaseConn(DatabaseConnModel databaseConnModel) async {
    final response = await http.put(Uri.parse('$apiUrl/databaseConn'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $accessToken',
        },
        body: jsonEncode(databaseConnModel.toJson()..remove('id')));

    if (response.statusCode != 200) {
      throw Exception('Failed to update database connection');
    }
  }

  Future<void> deleteDatabaseConn(String id) async {
    final response = await http.delete(
      Uri.parse('$apiUrl/databaseConn/$id'),
      headers: <String, String>{
        'Authorization': 'Bearer $accessToken',
      },
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to delete database connection');
    }
  }

  Future<List<DatabaseConnModel>> getAllDatabaseConn() async {
    final response = await http.get(
      Uri.parse('$apiUrl/databaseConn'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $accessToken',
      },
    );

    if (response.statusCode == 200) {
      Iterable i = json.decode(response.body);
      return List<DatabaseConnModel>.from(
          i.map((model) => DatabaseConnModel.fromJson(model)));
    } else {
      throw Exception('Failed to load database connections');
    }
  }
}
