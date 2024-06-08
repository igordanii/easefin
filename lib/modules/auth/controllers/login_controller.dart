import 'package:finease/modules/auth/dtos/credentials_dto.dart';
import 'package:finease/modules/auth/repositories/auth_repository.dart';
import 'package:flutter/material.dart';

class LoginController with ChangeNotifier {
  final authRepository = AuthRepository();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoading = false;

  String login() {
    isLoading = true;
    notifyListeners();

    final credentials = CredentialsDTO(
      emailController.text,
      passwordController.text,
    );

    final token = authRepository.signIn(credentials);

    isLoading = false;
    notifyListeners();
    print(token);
    return token;
  }
}
