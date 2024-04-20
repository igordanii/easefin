import 'package:flutter/foundation.dart';
import 'package:postgres/postgres.dart';

class DbConnector {
  static const String username = String.fromEnvironment("DB_USERNAME");
  static const String password = String.fromEnvironment("DB_PASSWORD");
  static const String host = String.fromEnvironment("DB_HOST");
  static late final Connection conn;
  static const String database = String.fromEnvironment("DB_DATABASE");

  static Future<Connection> connect() async {
    return conn = await Connection.open(Endpoint(
        host: host,
        username: username,
        password: password,
        database: database));
  }

  static Connection getConnection() {
    connect();
    return conn;
  }

  static void closeConnection() {
    conn.close();
    if (kDebugMode) {
      print("The database connection was successfully closed");
    }
  }
}
