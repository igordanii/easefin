import 'package:dio/dio.dart';
import 'package:finease/modules/auth/dtos/credentials_dto.dart';

class AuthRepository {
  final Dio dio = Dio();

  String signIn(CredentialsDTO credentials) {
    print(credentials.email);
    print(credentials.password);

    Map<String, String> users = {
      "igordanice@gmail.com": "123456",
      "livia@example.com": "654321",
      "wanessa@example.com": "123654",
      "leonardo@gmail.com": "abcdef"
    };

    if (users.containsKey(credentials.email) &&
        users[credentials.email] == credentials.password) {
      return "123456";
    }

    return "Usuário ou senha inválidos";
  }
}
