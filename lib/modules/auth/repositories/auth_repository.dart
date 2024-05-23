import 'package:dio/dio.dart';
import 'package:finease/modules/auth/dtos/credentials_dto.dart';

class AuthRepository {
  final Dio dio = Dio();

  Future<String> signIn(CredentialsDTO credentials) async {
    print(credentials.email);
    print(credentials.password);

    // final response = await dio.get('https://pub.dev');

    // if (response.statusCode != 200) {
    //   return '';
    // }

    return 'ABC' as String;
  }
}
