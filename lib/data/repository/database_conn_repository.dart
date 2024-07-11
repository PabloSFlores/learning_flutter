import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/database_conn_model.dart';

class DatabaseConnRepository {
  final String apiUrl;
  final String apiKey;

  DatabaseConnRepository({
    required this.apiUrl,
    required this.apiKey,
  });
}