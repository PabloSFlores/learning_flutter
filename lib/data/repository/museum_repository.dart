import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/museum_model.dart';

class MuseumRepository {
  final String apiUrl;
  final String accessToken;

  MuseumRepository({required this.apiUrl, required this.accessToken});

  Future<void> createMuseum(MuseumModel museum) async {
    final response = await http.post(
      Uri.parse('$apiUrl/museums'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $accessToken',
      },
      body: jsonEncode(museum.toJson()..remove('id')),
    );

    if (response.statusCode != 200) {
      throw Exception("Failed to create museum.");
    }
  }

  Future<MuseumModel> getMuseum(String id) async {
    final response = await http.get(
      Uri.parse('$apiUrl/museums/$id'),
      headers: <String, String>{
        'Authorization': 'Bearer $accessToken',
      },
    );

    if (response.statusCode == 200) {
      return MuseumModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load mseum.');
    }
  }

  Future<void> updateMuseum(MuseumModel museum) async {
    final response = await http.put(
      Uri.parse('$apiUrl/museums'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $accessToken',
      },
      body: jsonEncode(museum.toJson()),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to update museum');
    }
  }

  Future<void> deleteMuseum(String id) async {
    final response = await http.delete(
      Uri.parse('$apiUrl/museums/$id'),
      headers: <String, String>{
        'Authorization': 'Bearer $accessToken',
      },
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to delete museums');
    }
  }

  Future<List<MuseumModel>> getAllMuseums() async {
    final response = await http.get(
      Uri.parse('$apiUrl/museums'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $accessToken',
      },
    );

    if (response.statusCode == 200) {
      Iterable l = json.decode(response.body);
      return List<MuseumModel>.from(l.map((model) => MuseumModel.fromJson(model)));
    } else {
      throw Exception('Failed to load museums');
    }
  }
}
