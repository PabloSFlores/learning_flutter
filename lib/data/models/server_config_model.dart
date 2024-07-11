import 'package:my_app_9a/data/models/database_conn_model.dart';

class ServerConfigModel {
  final String url;
  final String port;
  final String username;
  final String password;
  final DatabaseConnModel databaseConfig;

  ServerConfigModel({
    required this.url,
    required this.port,
    required this.username,
    required this.password,
    required this.databaseConfig,
  });

  factory ServerConfigModel.fromJson(Map<String, dynamic> json) {
    return ServerConfigModel(
      url: json['url'],
      port: json['port'],
      username: json['username'],
      password: json['password'],
      databaseConfig: DatabaseConnModel.fromJson(json['databaseConfig']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'port': port,
      'username': username,
      'password': password,
      'databaseConfig': databaseConfig.toJson(),
    };
  }
}