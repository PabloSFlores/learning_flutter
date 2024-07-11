class DatabaseConnModel {
  final String username;
  final String password;
  final String host;
  final int port;
  final String databaseName;
  final String url;

  DatabaseConnModel({
    required this.username,
    required this.password,
    required this.host,
    required this.port,
    required this.databaseName,
    required this.url,
  });

  factory DatabaseConnModel.fromJson(Map<String, dynamic> json) {
    return DatabaseConnModel(
      username: json['username'],
      password: json['password'],
      host: json['host'],
      port: json['port'],
      databaseName: json['databaseName'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
      'host': host,
      'port': port,
      'databaseName': databaseName,
      'url': url,
    };
  }
}
